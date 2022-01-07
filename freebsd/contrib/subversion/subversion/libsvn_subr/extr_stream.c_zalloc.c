
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * voidpf ;
typedef int uInt ;
typedef int apr_pool_t ;


 int * apr_palloc (int *,int) ;

__attribute__((used)) static voidpf
zalloc(voidpf opaque, uInt items, uInt size)
{
  apr_pool_t *pool = opaque;

  return apr_palloc(pool, items * size);
}
