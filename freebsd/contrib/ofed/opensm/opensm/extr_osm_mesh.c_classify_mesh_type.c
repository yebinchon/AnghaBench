
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* node; } ;
typedef TYPE_3__ switch_t ;
struct mesh_info {int dimension; int poly; int degree; } ;
typedef int osm_log_t ;
struct TYPE_10__ {TYPE_3__** switches; TYPE_1__* p_osm; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_8__ {int type; int dimension; int poly; } ;
struct TYPE_7__ {int log; } ;


 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 struct mesh_info* mesh_info ;
 scalar_t__ poly_diff (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void classify_mesh_type(lash_t *p_lash, int sw)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int i;
 switch_t *s = p_lash->switches[sw];
 const struct mesh_info *t;

 OSM_LOG_ENTER(p_log);

 if (!s->node->poly)
  goto done;

 for (i = 1; (t = &mesh_info[i])->dimension != -1; i++) {
  if (poly_diff(t->degree, t->poly, s))
   continue;

  s->node->type = i;
  s->node->dimension = t->dimension;
  OSM_LOG_EXIT(p_log);
  return;
 }

done:
 s->node->type = 0;
 OSM_LOG_EXIT(p_log);
 return;
}
