
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int arcs_size; int * arcs_esize; } ;
typedef TYPE_2__ arc_state_t ;
struct TYPE_10__ {int b_pabd; int b_refcnt; int b_arc_node; TYPE_2__* b_state; } ;
struct TYPE_12__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;
typedef size_t arc_buf_contents_t ;


 size_t ARC_BUFC_DATA ;
 size_t ARC_BUFC_METADATA ;
 int ARC_SPACE_DATA ;
 int ARC_SPACE_META ;
 int ASSERT (int) ;
 TYPE_2__* arc_anon ;
 size_t arc_buf_type (TYPE_3__*) ;
 int arc_hdr_size (TYPE_3__*) ;
 TYPE_2__* arc_l2c_only ;
 int arc_space_return (int ,int ) ;
 int l2arc_free_abd_on_write (int ,int ,size_t) ;
 scalar_t__ multilist_link_active (int *) ;
 int zfs_refcount_is_zero (int *) ;
 int zfs_refcount_remove_many (int *,int ,TYPE_3__*) ;

__attribute__((used)) static void
arc_hdr_free_on_write(arc_buf_hdr_t *hdr)
{
 arc_state_t *state = hdr->b_l1hdr.b_state;
 arc_buf_contents_t type = arc_buf_type(hdr);
 uint64_t size = arc_hdr_size(hdr);


 if (multilist_link_active(&hdr->b_l1hdr.b_arc_node)) {
  ASSERT(zfs_refcount_is_zero(&hdr->b_l1hdr.b_refcnt));
  ASSERT(state != arc_anon && state != arc_l2c_only);

  (void) zfs_refcount_remove_many(&state->arcs_esize[type],
      size, hdr);
 }
 (void) zfs_refcount_remove_many(&state->arcs_size, size, hdr);
 if (type == ARC_BUFC_METADATA) {
  arc_space_return(size, ARC_SPACE_META);
 } else {
  ASSERT(type == ARC_BUFC_DATA);
  arc_space_return(size, ARC_SPACE_DATA);
 }

 l2arc_free_abd_on_write(hdr->b_l1hdr.b_pabd, size, type);
}
