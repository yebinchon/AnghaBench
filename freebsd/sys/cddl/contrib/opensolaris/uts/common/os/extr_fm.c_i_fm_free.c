
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int kmem_free (void*,size_t) ;

__attribute__((used)) static void
i_fm_free(nv_alloc_t *nva, void *buf, size_t size)
{
 kmem_free(buf, size);
}
