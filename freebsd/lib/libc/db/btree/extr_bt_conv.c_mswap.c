
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int PAGE ;


 int P_32_SWAP (char*) ;

__attribute__((used)) static void
mswap(PAGE *pg)
{
 char *p;

 p = (char *)pg;
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
 P_32_SWAP(p);
 p += sizeof(u_int32_t);
}
