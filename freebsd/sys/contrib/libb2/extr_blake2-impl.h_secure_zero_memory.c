
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SecureZeroMemory (void*,size_t) ;
 int explicit_bzero (void*,size_t) ;
 int explicit_memset (void*,int ,size_t) ;
 int memset (void*,int ,size_t) ;
 int memset_s (void*,size_t,int ,size_t) ;

__attribute__((used)) static inline void secure_zero_memory(void *v, size_t n)
{
  memset(v, 0, n);
  __asm__ __volatile__("" :: "r"(v) : "memory");


}
