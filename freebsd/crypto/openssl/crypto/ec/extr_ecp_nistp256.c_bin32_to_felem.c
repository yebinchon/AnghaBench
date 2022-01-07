
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int * felem ;



__attribute__((used)) static void bin32_to_felem(felem out, const u8 in[32])
{
    out[0] = *((u64 *)&in[0]);
    out[1] = *((u64 *)&in[8]);
    out[2] = *((u64 *)&in[16]);
    out[3] = *((u64 *)&in[24]);
}
