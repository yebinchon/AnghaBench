
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int refcnt_t ;



__attribute__((used)) static __inline void
refcnt_init(refcnt_t *count, unsigned int v)
{

 *count = v;
}
