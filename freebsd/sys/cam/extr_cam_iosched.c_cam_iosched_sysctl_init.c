
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct cam_iosched_softc {int max_lat; int load; int total_ticks; int quanta; int read_bias; int trim_stats; int write_stats; int read_stats; struct sysctl_ctx_list sysctl_ctx; struct sysctl_oid* sysctl_tree; int trim_goal; int sort_io_queue; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_ADD_U64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int cam_iosched_cl_sysctl_init (struct cam_iosched_softc*) ;
 int cam_iosched_iop_stats_sysctl_init (struct cam_iosched_softc*,int *,char*) ;
 int cam_iosched_quanta_sysctl ;
 int do_dynamic_iosched ;

void cam_iosched_sysctl_init(struct cam_iosched_softc *isc,
    struct sysctl_ctx_list *ctx, struct sysctl_oid *node)
{
 struct sysctl_oid_list *n;

 n = SYSCTL_CHILDREN(node);
 SYSCTL_ADD_INT(ctx, n,
  OID_AUTO, "sort_io_queue", CTLFLAG_RW | CTLFLAG_MPSAFE,
  &isc->sort_io_queue, 0,
  "Sort IO queue to try and optimise disk access patterns");
 SYSCTL_ADD_INT(ctx, n,
     OID_AUTO, "trim_goal", CTLFLAG_RW,
     &isc->trim_goal, 0,
     "Number of trims to try to accumulate before sending to hardware");
 SYSCTL_ADD_INT(ctx, n,
     OID_AUTO, "trim_ticks", CTLFLAG_RW,
     &isc->trim_goal, 0,
     "IO Schedul qaunta to hold back trims for when accumulating");
}
