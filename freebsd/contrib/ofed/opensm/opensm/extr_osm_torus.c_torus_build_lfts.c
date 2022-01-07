
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fabric {scalar_t__ ca_cnt; scalar_t__ switch_cnt; scalar_t__ link_cnt; TYPE_2__* osm; } ;
struct torus_context {struct torus* torus; TYPE_2__* osm; struct fabric fabric; } ;
struct torus {int flags; TYPE_2__* osm; scalar_t__ ca_cnt; scalar_t__ switch_cnt; scalar_t__ link_cnt; scalar_t__ z_sz; scalar_t__ y_sz; scalar_t__ x_sz; } ;
struct TYPE_6__ {int qos_options; int qos_rtr_options; int qos_sw0_options; int qos_ca_options; int qos_swe_options; int torus_conf_file; int qos; } ;
typedef TYPE_3__ osm_subn_opt_t ;
typedef int osm_log_t ;
struct TYPE_4__ {TYPE_3__ opt; scalar_t__ min_sw_data_vls; scalar_t__ min_data_vls; } ;
struct TYPE_5__ {int log; TYPE_1__ subn; } ;


 scalar_t__ ALL_MESH (int) ;
 int NOTIFY_CHANGES ;
 int OSM_LOG (int *,int ,char*,...) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_INFO ;
 int build_torus (struct fabric*,struct torus*) ;
 struct torus* calloc (int,int) ;
 int capture_fabric (struct fabric*) ;
 int check_qos_ep_config (int *,int *,char*,int *) ;
 int check_qos_swe_config (int *,int *,int *) ;
 int diagnose_fabric (struct fabric*) ;
 int errno ;
 int parse_config (int ,struct fabric*,struct torus*) ;
 int report_torus_changes (struct torus*,struct torus*) ;
 scalar_t__ routable_torus (struct torus*,struct fabric*) ;
 int route_torus (struct torus*) ;
 int strerror (int ) ;
 int teardown_fabric (struct fabric*) ;
 int teardown_torus (struct torus*) ;
 int verify_setup (struct torus*,struct fabric*) ;

__attribute__((used)) static
int torus_build_lfts(void *context)
{
 int status = -1;
 struct torus_context *ctx = context;
 struct fabric *fabric;
 struct torus *torus;

 if (!ctx->osm->subn.opt.qos) {
  OSM_LOG(&ctx->osm->log, OSM_LOG_ERROR,
   "ERR 4E44: Routing engine list contains torus-2QoS. "
   "Enable QoS for correct operation "
   "(-Q or 'qos TRUE' in opensm.conf).\n");
  return status;
 }

 fabric = &ctx->fabric;
 teardown_fabric(fabric);

 torus = calloc(1, sizeof(*torus));
 if (!torus) {
  OSM_LOG(&ctx->osm->log, OSM_LOG_ERROR,
   "ERR 4E45: allocating torus: %s\n", strerror(errno));
  goto out;
 }
 torus->osm = ctx->osm;
 fabric->osm = ctx->osm;

 if (!parse_config(ctx->osm->subn.opt.torus_conf_file,
     fabric, torus))
  goto out;

 if (!capture_fabric(fabric))
  goto out;

 OSM_LOG(&torus->osm->log, OSM_LOG_INFO,
  "Found fabric w/ %d links, %d switches, %d CA ports, "
  "minimum data VLs: endport %d, switchport %d\n",
  (int)fabric->link_cnt, (int)fabric->switch_cnt,
  (int)fabric->ca_cnt, (int)ctx->osm->subn.min_data_vls,
  (int)ctx->osm->subn.min_sw_data_vls);

 if (!verify_setup(torus, fabric))
  goto out;

 OSM_LOG(&torus->osm->log, OSM_LOG_INFO,
  "Looking for %d x %d x %d %s\n",
  (int)torus->x_sz, (int)torus->y_sz, (int)torus->z_sz,
  (ALL_MESH(torus->flags) ? "mesh" : "torus"));

 if (!build_torus(fabric, torus)) {
  OSM_LOG(&torus->osm->log, OSM_LOG_ERROR, "ERR 4E57: "
   "build_torus finished with errors\n");
  goto out;
 }

 OSM_LOG(&torus->osm->log, OSM_LOG_INFO,
  "Built %d x %d x %d %s w/ %d links, %d switches, %d CA ports\n",
  (int)torus->x_sz, (int)torus->y_sz, (int)torus->z_sz,
  (ALL_MESH(torus->flags) ? "mesh" : "torus"),
  (int)torus->link_cnt, (int)torus->switch_cnt,
  (int)torus->ca_cnt);

 diagnose_fabric(fabric);




 if (torus->flags & NOTIFY_CHANGES)
  report_torus_changes(torus, ctx->torus);

 if (routable_torus(torus, fabric))
  status = route_torus(torus);

out:
 if (status) {
  if (torus)
   teardown_torus(torus);
 } else {
  osm_subn_opt_t *opt = &torus->osm->subn.opt;
  osm_log_t *log = &torus->osm->log;

  if (ctx->torus)
   teardown_torus(ctx->torus);
  ctx->torus = torus;

  check_qos_swe_config(&opt->qos_swe_options, &opt->qos_options,
         log);

  check_qos_ep_config(&opt->qos_ca_options,
        &opt->qos_options, "qos_ca", log);
  check_qos_ep_config(&opt->qos_sw0_options,
        &opt->qos_options, "qos_sw0", log);
  check_qos_ep_config(&opt->qos_rtr_options,
        &opt->qos_options, "qos_rtr", log);
 }
 teardown_fabric(fabric);
 return status;
}
