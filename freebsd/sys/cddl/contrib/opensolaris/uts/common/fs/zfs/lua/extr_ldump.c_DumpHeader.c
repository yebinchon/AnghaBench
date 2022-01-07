
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lu_byte ;
typedef int DumpState ;


 int DumpBlock (int *,int,int *) ;
 int LUAC_HEADERSIZE ;
 int luaU_header (int *) ;

__attribute__((used)) static void DumpHeader(DumpState* D)
{
 lu_byte h[LUAC_HEADERSIZE];
 luaU_header(h);
 DumpBlock(h,LUAC_HEADERSIZE,D);
}
