
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DB_ALIGN ;

__attribute__((used)) static __inline size_t
ceilto(size_t sz)
{
 return ((sz + DB_ALIGN - 1) & ~(DB_ALIGN - 1));
}
