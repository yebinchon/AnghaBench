
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int item; } ;
typedef TYPE_1__ name_map_item_t ;
struct TYPE_12__ {int map_item; } ;
typedef TYPE_2__ ftree_sw_tbl_element_t ;
struct TYPE_13__ {int map_item; } ;
typedef TYPE_3__ ftree_sw_t ;
struct TYPE_14__ {int map_item; } ;
typedef TYPE_4__ ftree_hca_t ;
struct TYPE_15__ {scalar_t__ leaf_switches_num; int fabric_built; TYPE_1__* leaf_switches; scalar_t__ lft_max_lid; scalar_t__ max_cn_per_leaf; scalar_t__ max_switch_rank; scalar_t__ leaf_switch_rank; scalar_t__ ca_ports; scalar_t__ cn_num; int io_guid_tbl; int cn_guid_tbl; int sw_by_tuple_tbl; int sw_tbl; int hca_tbl; } ;
typedef TYPE_5__ ftree_fabric_t ;


 int FALSE ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int cl_qmap_remove_all (int *) ;
 int free (TYPE_1__*) ;
 int hca_destroy (TYPE_4__*) ;
 int sw_destroy (TYPE_3__*) ;
 int sw_tbl_element_destroy (TYPE_2__*) ;

__attribute__((used)) static void fabric_clear(ftree_fabric_t * p_ftree)
{
 ftree_hca_t *p_hca;
 ftree_hca_t *p_next_hca;
 ftree_sw_t *p_sw;
 ftree_sw_t *p_next_sw;
 ftree_sw_tbl_element_t *p_element;
 ftree_sw_tbl_element_t *p_next_element;
 name_map_item_t *p_guid_element, *p_next_guid_element;

 if (!p_ftree)
  return;



 p_next_hca = (ftree_hca_t *) cl_qmap_head(&p_ftree->hca_tbl);
 while (p_next_hca != (ftree_hca_t *) cl_qmap_end(&p_ftree->hca_tbl)) {
  p_hca = p_next_hca;
  p_next_hca = (ftree_hca_t *) cl_qmap_next(&p_hca->map_item);
  hca_destroy(p_hca);
 }
 cl_qmap_remove_all(&p_ftree->hca_tbl);



 p_next_sw = (ftree_sw_t *) cl_qmap_head(&p_ftree->sw_tbl);
 while (p_next_sw != (ftree_sw_t *) cl_qmap_end(&p_ftree->sw_tbl)) {
  p_sw = p_next_sw;
  p_next_sw = (ftree_sw_t *) cl_qmap_next(&p_sw->map_item);
  sw_destroy(p_sw);
 }
 cl_qmap_remove_all(&p_ftree->sw_tbl);



 p_next_element =
     (ftree_sw_tbl_element_t *) cl_qmap_head(&p_ftree->sw_by_tuple_tbl);
 while (p_next_element != (ftree_sw_tbl_element_t *)
        cl_qmap_end(&p_ftree->sw_by_tuple_tbl)) {
  p_element = p_next_element;
  p_next_element = (ftree_sw_tbl_element_t *)
      cl_qmap_next(&p_element->map_item);
  sw_tbl_element_destroy(p_element);
 }
 cl_qmap_remove_all(&p_ftree->sw_by_tuple_tbl);


 p_next_guid_element =
     (name_map_item_t *) cl_qmap_head(&p_ftree->cn_guid_tbl);
 while (p_next_guid_element !=
        (name_map_item_t *) cl_qmap_end(&p_ftree->cn_guid_tbl)) {
  p_guid_element = p_next_guid_element;
  p_next_guid_element =
      (name_map_item_t *) cl_qmap_next(&p_guid_element->item);
  free(p_guid_element);
 }
 cl_qmap_remove_all(&p_ftree->cn_guid_tbl);


 p_next_guid_element =
     (name_map_item_t *) cl_qmap_head(&p_ftree->io_guid_tbl);
 while (p_next_guid_element !=
        (name_map_item_t *) cl_qmap_end(&p_ftree->io_guid_tbl)) {
  p_guid_element = p_next_guid_element;
  p_next_guid_element =
      (name_map_item_t *) cl_qmap_next(&p_guid_element->item);
  free(p_guid_element);
 }
 cl_qmap_remove_all(&p_ftree->io_guid_tbl);


 if ((p_ftree->leaf_switches_num > 0) && (p_ftree->leaf_switches))
  free(p_ftree->leaf_switches);

 p_ftree->leaf_switches_num = 0;
 p_ftree->cn_num = 0;
 p_ftree->ca_ports = 0;
 p_ftree->leaf_switch_rank = 0;
 p_ftree->max_switch_rank = 0;
 p_ftree->max_cn_per_leaf = 0;
 p_ftree->lft_max_lid = 0;
 p_ftree->leaf_switches = ((void*)0);
 p_ftree->fabric_built = FALSE;

}
