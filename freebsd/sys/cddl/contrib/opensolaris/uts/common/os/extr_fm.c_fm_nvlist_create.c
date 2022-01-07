
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int nv_alloc_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int fm_mem_alloc_ops ;
 int kmem_free (int *,int) ;
 int * kmem_zalloc (int,int ) ;
 int nv_alloc_fini (int *) ;
 scalar_t__ nv_alloc_init (int *,int *,int *,int ) ;
 scalar_t__ nvlist_xalloc (int **,int ,int *) ;

nvlist_t *
fm_nvlist_create(nv_alloc_t *nva)
{
 int hdl_alloced = 0;
 nvlist_t *nvl;
 nv_alloc_t *nvhdl;

 if (nva == ((void*)0)) {
  nvhdl = kmem_zalloc(sizeof (nv_alloc_t), KM_SLEEP);

  if (nv_alloc_init(nvhdl, &fm_mem_alloc_ops, ((void*)0), 0) != 0) {
   kmem_free(nvhdl, sizeof (nv_alloc_t));
   return (((void*)0));
  }
  hdl_alloced = 1;
 } else {
  nvhdl = nva;
 }

 if (nvlist_xalloc(&nvl, NV_UNIQUE_NAME, nvhdl) != 0) {
  if (hdl_alloced) {
   nv_alloc_fini(nvhdl);
   kmem_free(nvhdl, sizeof (nv_alloc_t));
  }
  return (((void*)0));
 }

 return (nvl);
}
