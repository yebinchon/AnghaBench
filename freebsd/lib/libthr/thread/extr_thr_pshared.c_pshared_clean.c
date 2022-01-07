
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int UMTX_OP_SHM ;
 int UMTX_SHM_DESTROY ;
 int _umtx_op (int *,int ,int ,void*,int *) ;
 int munmap (void*,int ) ;

__attribute__((used)) static void
pshared_clean(void *key, void *val)
{

 if (val != ((void*)0))
  munmap(val, PAGE_SIZE);
 _umtx_op(((void*)0), UMTX_OP_SHM, UMTX_SHM_DESTROY, key, ((void*)0));
}
