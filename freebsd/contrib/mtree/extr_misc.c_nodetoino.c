
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 int abort () ;
 int printf (char*,int) ;

u_int
nodetoino(u_int type)
{

 switch (type) {
 case 134:
  return S_IFBLK;
 case 133:
  return S_IFCHR;
 case 132:
  return S_IFDIR;
 case 131:
  return S_IFIFO;
 case 130:
  return S_IFREG;
 case 129:
  return S_IFLNK;




 default:
  printf("unknown type %d", type);
  abort();
 }

}
