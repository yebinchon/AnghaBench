
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ zb_objset; scalar_t__ zb_object; } ;
typedef TYPE_2__ zbookmark_phys_t ;
struct TYPE_12__ {int spc_indblkshift; int spc_datablkszsec; scalar_t__ spc_root; TYPE_1__* spc_scn; } ;
typedef TYPE_3__ scan_prefetch_ctx_t ;
typedef scalar_t__ int64_t ;
struct TYPE_13__ {int dn_indblkshift; int dn_datablkszsec; } ;
typedef TYPE_4__ dnode_phys_t ;
typedef int boolean_t ;
struct TYPE_10__ {TYPE_2__ scn_prefetch_bookmark; } ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ zbookmark_subtree_completed (TYPE_4__*,TYPE_2__ const*,TYPE_2__*) ;

__attribute__((used)) static boolean_t
dsl_scan_check_prefetch_resume(scan_prefetch_ctx_t *spc,
    const zbookmark_phys_t *zb)
{
 zbookmark_phys_t *last_zb = &spc->spc_scn->scn_prefetch_bookmark;
 dnode_phys_t tmp_dnp;
 dnode_phys_t *dnp = (spc->spc_root) ? ((void*)0) : &tmp_dnp;

 if (zb->zb_objset != last_zb->zb_objset)
  return (B_TRUE);
 if ((int64_t)zb->zb_object < 0)
  return (B_FALSE);

 tmp_dnp.dn_datablkszsec = spc->spc_datablkszsec;
 tmp_dnp.dn_indblkshift = spc->spc_indblkshift;

 if (zbookmark_subtree_completed(dnp, zb, last_zb))
  return (B_TRUE);

 return (B_FALSE);
}
