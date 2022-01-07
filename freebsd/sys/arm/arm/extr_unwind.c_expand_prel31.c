
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static __inline int32_t
expand_prel31(uint32_t prel31)
{

 return ((int32_t)(prel31 & 0x7fffffffu) << 1) / 2;
}
