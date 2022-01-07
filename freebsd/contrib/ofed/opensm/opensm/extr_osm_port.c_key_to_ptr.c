
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int memcpy (void**,int *,int) ;

__attribute__((used)) static inline void *key_to_ptr(uint64_t k)
{
 void *p = 0;

 memcpy(&p, &k, sizeof(void *));
 return p;
}
