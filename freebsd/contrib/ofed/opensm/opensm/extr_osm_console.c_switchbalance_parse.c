
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int map_item; } ;
typedef TYPE_1__ osm_switch_t ;
struct TYPE_10__ {int sw_guid_tbl; } ;
struct TYPE_9__ {int lock; TYPE_7__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int cl_qmap_t ;
typedef int FILE ;


 int cl_hton64 (scalar_t__) ;
 int cl_plock_acquire (int *) ;
 int cl_plock_release (int *) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int fprintf (int *,char*) ;
 int help_switchbalance (int *,int) ;
 char* next_token (char**) ;
 TYPE_1__* osm_get_switch_by_guid (TYPE_7__*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtoull (char*,char**,int ) ;
 int switchbalance_check (TYPE_2__*,TYPE_1__*,int *,int) ;

__attribute__((used)) static void switchbalance_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;
 uint64_t guid = 0;
 osm_switch_t *p_sw;
 int verbose = 0;

 p_cmd = next_token(p_last);
 if (p_cmd) {
  char *p_end;

  if (strcmp(p_cmd, "verbose") == 0) {
   verbose++;
   p_cmd = next_token(p_last);
  }

  if (p_cmd) {
   guid = strtoull(p_cmd, &p_end, 0);
   if (!guid || *p_end != '\0') {
    fprintf(out, "Invalid guid specified\n");
    help_switchbalance(out, 1);
    return;
   }
  }
 }

 cl_plock_acquire(&p_osm->lock);
 if (guid) {
  p_sw = osm_get_switch_by_guid(&p_osm->subn, cl_hton64(guid));
  if (!p_sw) {
   fprintf(out, "guid not found\n");
   goto lock_exit;
  }

  switchbalance_check(p_osm, p_sw, out, verbose);
 } else {
  cl_qmap_t *p_sw_guid_tbl = &p_osm->subn.sw_guid_tbl;
  for (p_sw = (osm_switch_t *) cl_qmap_head(p_sw_guid_tbl);
       p_sw != (osm_switch_t *) cl_qmap_end(p_sw_guid_tbl);
       p_sw = (osm_switch_t *) cl_qmap_next(&p_sw->map_item))
   switchbalance_check(p_osm, p_sw, out, verbose);
 }
lock_exit:
 cl_plock_release(&p_osm->lock);
 return;
}
