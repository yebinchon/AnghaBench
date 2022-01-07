
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint64_t ;
struct TYPE_12__ {int td_flags; int (* td_func ) (int ,int *,int *,int *,TYPE_3__ const*,int ) ;int td_arg; int td_spa; TYPE_1__* td_resume; } ;
typedef TYPE_2__ traverse_data_t ;
struct TYPE_13__ {int dn_nblkptr; int dn_flags; int * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef TYPE_3__ dnode_phys_t ;
struct TYPE_11__ {int zb_object; } ;


 int DMU_META_DNODE_OBJECT ;
 int DMU_SPILL_BLKID ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 int * DN_SPILL_BLKPTR (TYPE_3__ const*) ;
 int SET_BOOKMARK (int *,int ,int ,scalar_t__,int) ;
 int TRAVERSE_POST ;
 int TRAVERSE_PRE ;
 int TRAVERSE_VISIT_NO_CHILDREN ;
 int ZB_DNODE_BLKID ;
 scalar_t__ ZB_DNODE_LEVEL ;
 int stub1 (int ,int *,int *,int *,TYPE_3__ const*,int ) ;
 int stub2 (int ,int *,int *,int *,TYPE_3__ const*,int ) ;
 int traverse_visitbp (TYPE_2__*,TYPE_3__ const*,int *,int *) ;

__attribute__((used)) static int
traverse_dnode(traverse_data_t *td, const dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
 int j, err = 0;
 zbookmark_phys_t czb;

 if (object != DMU_META_DNODE_OBJECT && td->td_resume != ((void*)0) &&
     object < td->td_resume->zb_object)
  return (0);

 if (td->td_flags & TRAVERSE_PRE) {
  SET_BOOKMARK(&czb, objset, object, ZB_DNODE_LEVEL,
      ZB_DNODE_BLKID);
  err = td->td_func(td->td_spa, ((void*)0), ((void*)0), &czb, dnp,
      td->td_arg);
  if (err == TRAVERSE_VISIT_NO_CHILDREN)
   return (0);
  if (err != 0)
   return (err);
 }

 for (j = 0; j < dnp->dn_nblkptr; j++) {
  SET_BOOKMARK(&czb, objset, object, dnp->dn_nlevels - 1, j);
  err = traverse_visitbp(td, dnp, &dnp->dn_blkptr[j], &czb);
  if (err != 0)
   break;
 }

 if (err == 0 && (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR)) {
  SET_BOOKMARK(&czb, objset, object, 0, DMU_SPILL_BLKID);
  err = traverse_visitbp(td, dnp, DN_SPILL_BLKPTR(dnp), &czb);
 }

 if (err == 0 && (td->td_flags & TRAVERSE_POST)) {
  SET_BOOKMARK(&czb, objset, object, ZB_DNODE_LEVEL,
      ZB_DNODE_BLKID);
  err = td->td_func(td->td_spa, ((void*)0), ((void*)0), &czb, dnp,
      td->td_arg);
  if (err == TRAVERSE_VISIT_NO_CHILDREN)
   return (0);
  if (err != 0)
   return (err);
 }
 return (err);
}
