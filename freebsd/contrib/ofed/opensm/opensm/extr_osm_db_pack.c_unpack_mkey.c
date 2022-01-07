
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int strtoull (char*,int *,int ) ;

__attribute__((used)) static inline uint64_t unpack_mkey(char *p_mkey_str)
{
 return strtoull(p_mkey_str, ((void*)0), 0);
}
