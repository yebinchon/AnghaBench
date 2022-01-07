
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st_ptr_t ;


 int strhash (char const*) ;

__attribute__((used)) static inline st_ptr_t st_strhash(void *key)
{
 return strhash((const char *)key);
}
