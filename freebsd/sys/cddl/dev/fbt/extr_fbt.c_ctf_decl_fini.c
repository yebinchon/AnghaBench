
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cd_nodes; } ;
typedef TYPE_1__ ctf_decl_t ;
typedef int ctf_decl_node_t ;


 int CTF_PREC_BASE ;
 int CTF_PREC_MAX ;
 int M_FBT ;
 int * ctf_list_next (int *) ;
 int free (int *,int ) ;

__attribute__((used)) static void
ctf_decl_fini(ctf_decl_t *cd)
{
 ctf_decl_node_t *cdp, *ndp;
 int i;

 for (i = CTF_PREC_BASE; i < CTF_PREC_MAX; i++) {
  for (cdp = ctf_list_next(&cd->cd_nodes[i]);
      cdp != ((void*)0); cdp = ndp) {
   ndp = ctf_list_next(cdp);
   free(cdp, M_FBT);
  }
 }
}
