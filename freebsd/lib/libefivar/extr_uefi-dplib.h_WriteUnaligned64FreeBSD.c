
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint64_t ;


 int memcpy (void*,int *,int) ;

__attribute__((used)) static inline void
WriteUnaligned64(void *ptr, uint64_t val)
{
 memcpy(ptr, &val, sizeof(val));
}
