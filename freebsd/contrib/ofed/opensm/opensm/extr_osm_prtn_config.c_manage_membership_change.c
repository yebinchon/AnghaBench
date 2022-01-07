
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct part_conf {TYPE_2__* p_subn; } ;
struct TYPE_8__ {int part_guid_tbl; int full_guid_tbl; } ;
typedef TYPE_3__ osm_prtn_t ;
struct TYPE_9__ {int p_node; } ;
typedef TYPE_4__ osm_physp_t ;
typedef scalar_t__ membership_t ;
typedef int ib_net64_t ;
typedef int cl_map_t ;
typedef int cl_map_iterator_t ;
struct TYPE_6__ {int allow_both_pkeys; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;


 scalar_t__ BOTH ;



 scalar_t__ LIMITED ;
 int cl_hton64 (int ) ;
 int cl_map_end (int *) ;
 int cl_map_head (int *) ;
 int cl_map_next (int ) ;
 scalar_t__ cl_map_obj (int ) ;
 int cl_map_remove (int *,int ) ;
 int cl_map_remove_all (int *) ;
 int cl_map_remove_item (int *,int ) ;
 unsigned int osm_node_get_type (int ) ;

__attribute__((used)) static void manage_membership_change(struct part_conf *conf, osm_prtn_t * p,
         unsigned type, membership_t membership,
         ib_net64_t guid)
{
 cl_map_t *p_tbl;
 cl_map_iterator_t p_next, p_item;
 osm_physp_t *p_physp;
 if (!conf->p_subn->opt.allow_both_pkeys || membership == BOTH)
  return;

 switch (type){

 case 0:
  cl_map_remove_all(membership == LIMITED ?
      &p->full_guid_tbl : &p->part_guid_tbl);
  break;

 case 0xFF:
  cl_map_remove(membership == LIMITED ?
         &p->full_guid_tbl : &p->part_guid_tbl,
         cl_hton64(guid));
  break;

 case 130:
 case 128:
 case 129:
  p_tbl = (membership == LIMITED) ?
    &p->full_guid_tbl : &p->part_guid_tbl;

  p_next = cl_map_head(p_tbl);
  while (p_next != cl_map_end(p_tbl)) {
   p_item = p_next;
   p_next = cl_map_next(p_item);
   p_physp = (osm_physp_t *) cl_map_obj(p_item);
   if (osm_node_get_type(p_physp->p_node) == type)
    cl_map_remove_item(p_tbl, p_item);
  }
  break;
 default:
  break;

 }
}
