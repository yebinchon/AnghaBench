
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;


 scalar_t__ XXH_CPU_LITTLE_ENDIAN ;
 int XXH_read64 (void const*) ;
 int XXH_swap64 (int ) ;

__attribute__((used)) static U64 XXH_readBE64(const void* ptr)
{
    return XXH_CPU_LITTLE_ENDIAN ? XXH_swap64(XXH_read64(ptr)) : XXH_read64(ptr);
}
