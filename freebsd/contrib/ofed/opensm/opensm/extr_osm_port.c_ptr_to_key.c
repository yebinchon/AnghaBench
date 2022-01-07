
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int memcpy (int *,void const*,int) ;

__attribute__((used)) static inline uint64_t ptr_to_key(void const *p)
{
 uint64_t k = 0;

 memcpy(&k, p, sizeof(void *));
 return k;
}
