
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lu_byte ;
typedef int LoadState ;


 int LUAC_HEADERSIZE ;
 int LoadBlock (int *,int *,int) ;
 int N0 ;
 int N1 ;
 int N2 ;
 int N3 ;
 int error (int *,char*) ;
 int luaU_header (int *) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void LoadHeader(LoadState* S)
{
 lu_byte h[LUAC_HEADERSIZE];
 lu_byte s[LUAC_HEADERSIZE];
 luaU_header(h);
 memcpy(s,h,sizeof(char));
 LoadBlock(S,s+sizeof(char),LUAC_HEADERSIZE-sizeof(char));
 if (memcmp(h,s,N0)==0) return;
 if (memcmp(h,s,N1)!=0) error(S,"not a");
 if (memcmp(h,s,N2)!=0) error(S,"version mismatch in");
 if (memcmp(h,s,N3)!=0) error(S,"incompatible"); else error(S,"corrupted");
}
