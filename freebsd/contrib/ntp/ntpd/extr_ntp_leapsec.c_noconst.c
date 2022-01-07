
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void*
noconst(
 const void* ptr
 )
{
 union {
  const void * cp;
  void * vp;
 } tmp;
 tmp.cp = ptr;
 return tmp.vp;
}
