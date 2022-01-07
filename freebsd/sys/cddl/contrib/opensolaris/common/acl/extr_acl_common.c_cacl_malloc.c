
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SLEEP ;
 void* calloc (int,size_t) ;
 int errno ;
 void* kmem_zalloc (size_t,int ) ;

__attribute__((used)) static int
cacl_malloc(void **ptr, size_t size)
{




 *ptr = calloc(1, size);
 if (*ptr == ((void*)0))
  return (errno);

 return (0);

}
