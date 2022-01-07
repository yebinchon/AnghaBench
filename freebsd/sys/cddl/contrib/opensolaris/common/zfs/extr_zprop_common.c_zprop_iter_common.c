
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* zprop_func ) (int,void*) ;
struct TYPE_7__ {int pd_propnum; scalar_t__ pd_visible; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef int zfs_type_t ;
typedef scalar_t__ boolean_t ;


 int KM_SLEEP ;
 int ZPROP_CONT ;
 int free (TYPE_1__**) ;
 TYPE_1__** kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__**,int) ;
 TYPE_1__** malloc (int) ;
 int qsort (void*,int,int,int ) ;
 int zprop_compare ;
 int zprop_get_numprops (int ) ;
 TYPE_1__* zprop_get_proptable (int ) ;

int
zprop_iter_common(zprop_func func, void *cb, boolean_t show_all,
    boolean_t ordered, zfs_type_t type)
{
 int i, j, num_props, size, prop;
 zprop_desc_t *prop_tbl;
 zprop_desc_t **order;

 prop_tbl = zprop_get_proptable(type);
 num_props = zprop_get_numprops(type);
 size = num_props * sizeof (zprop_desc_t *);




 if ((order = malloc(size)) == ((void*)0))
  return (ZPROP_CONT);


 for (j = 0; j < num_props; j++)
  order[j] = &prop_tbl[j];

 if (ordered) {
  qsort((void *)order, num_props, sizeof (zprop_desc_t *),
      zprop_compare);
 }

 prop = ZPROP_CONT;
 for (i = 0; i < num_props; i++) {
  if ((order[i]->pd_visible || show_all) &&
      (func(order[i]->pd_propnum, cb) != ZPROP_CONT)) {
   prop = order[i]->pd_propnum;
   break;
  }
 }




 free(order);

 return (prop);
}
