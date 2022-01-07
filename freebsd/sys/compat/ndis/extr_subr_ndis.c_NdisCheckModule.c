
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ndis_checkmodule {TYPE_1__* fh; int afilename; } ;
typedef int linker_file_t ;
typedef int caddr_t ;
struct TYPE_2__ {int nf_maplen; int nf_type; int * nf_map; int nf_vp; } ;


 int NDIS_FH_TYPE_MODULE ;
 scalar_t__ ndis_find_sym (int ,int ,char*,int*) ;

__attribute__((used)) static int
NdisCheckModule(linker_file_t lf, void *context)
{
 struct ndis_checkmodule *nc;
 caddr_t kldstart, kldend;

 nc = (struct ndis_checkmodule *)context;
 if (ndis_find_sym(lf, nc->afilename, "_start", &kldstart))
  return (0);
 if (ndis_find_sym(lf, nc->afilename, "_end", &kldend))
  return (0);
 nc->fh->nf_vp = lf;
 nc->fh->nf_map = ((void*)0);
 nc->fh->nf_type = NDIS_FH_TYPE_MODULE;
 nc->fh->nf_maplen = (kldend - kldstart) & 0xFFFFFFFF;
 return (1);
}
