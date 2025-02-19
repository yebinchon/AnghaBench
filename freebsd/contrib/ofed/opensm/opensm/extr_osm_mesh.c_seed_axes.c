
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int osm_log_t ;
struct TYPE_9__ {int num_links; int** matrix; int dimension; int* axes; } ;
typedef TYPE_3__ mesh_node_t ;
struct TYPE_10__ {TYPE_2__** switches; TYPE_1__* p_osm; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_8__ {TYPE_3__* node; } ;
struct TYPE_7__ {int log; } ;


 int OSM_LOG (int *,int ,char*,char*) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 scalar_t__ OSM_LOG_IS_ACTIVE_V2 (int *,int ) ;
 int print_axis (TYPE_4__*,char*,int,int) ;

__attribute__((used)) static void seed_axes(lash_t *p_lash, int sw)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 mesh_node_t *node = p_lash->switches[sw]->node;
 int n = node->num_links;
 int i, j, c;

 OSM_LOG_ENTER(p_log);

 if (!node->matrix || !node->dimension)
  goto done;

 for (c = 1; c <= 2*node->dimension; c++) {



  for (i = 0; i < n; i++) {
   if (!node->axes[i])
    break;
  }

  node->axes[i] = c++;




  for (j = 0; j < n; j++) {
   if (node->axes[j] || j == i)
    continue;

   if (node->matrix[i][j] != 2)
    break;
  }

  if (j != n) {
   node->axes[j] = c;
  }
 }

 if (OSM_LOG_IS_ACTIVE_V2(p_log, OSM_LOG_DEBUG)) {
  char buf[256], *p;

  for (i = 0; i < n; i++) {
   p = buf;
   print_axis(p_lash, p, sw, i);
   OSM_LOG(p_log, OSM_LOG_DEBUG, "%s", buf);
  }
 }

done:
 OSM_LOG_EXIT(p_log);
}
