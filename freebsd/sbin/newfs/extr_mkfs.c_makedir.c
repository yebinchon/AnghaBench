
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct {int d_reclen; } ;


 int DIRBLKSIZ ;
 int DIRSIZ (int ,struct direct*) ;
 char* iobuf ;
 int memmove (char*,struct direct*,int) ;
 int memset (char*,int ,int) ;

int
makedir(struct direct *protodir, int entries)
{
 char *cp;
 int i, spcleft;

 spcleft = DIRBLKSIZ;
 memset(iobuf, 0, DIRBLKSIZ);
 for (cp = iobuf, i = 0; i < entries - 1; i++) {
  protodir[i].d_reclen = DIRSIZ(0, &protodir[i]);
  memmove(cp, &protodir[i], protodir[i].d_reclen);
  cp += protodir[i].d_reclen;
  spcleft -= protodir[i].d_reclen;
 }
 protodir[i].d_reclen = spcleft;
 memmove(cp, &protodir[i], DIRSIZ(0, &protodir[i]));
 return (DIRBLKSIZ);
}
