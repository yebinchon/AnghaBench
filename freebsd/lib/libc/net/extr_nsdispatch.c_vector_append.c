
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ELEMSPERCHUNK ;
 int LOG_ERR ;
 int memmove (void*,void const*,size_t) ;
 int nss_log_simple (int ,char*) ;
 void* reallocarray (void*,unsigned int,size_t) ;

__attribute__((used)) static void *
vector_append(const void *elem, void *vec, unsigned int *count, size_t esize)
{
 void *p;

 if ((*count % ELEMSPERCHUNK) == 0) {
  p = reallocarray(vec, *count + ELEMSPERCHUNK, esize);
  if (p == ((void*)0)) {
   nss_log_simple(LOG_ERR, "memory allocation failure");
   return (vec);
  }
  vec = p;
 }
 memmove((void *)(((uintptr_t)vec) + (*count * esize)), elem, esize);
 (*count)++;
 return (vec);
}
