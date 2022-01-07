
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;


 int DIP (union dinode*,int ) ;





 int IFMT ;


 int debug ;
 int di_mode ;
 int printf (char*,int) ;

int
ftypeok(union dinode *dp)
{
 switch (DIP(dp, di_mode) & IFMT) {

 case 132:
 case 129:
 case 134:
 case 133:
 case 130:
 case 128:
 case 131:
  return (1);

 default:
  if (debug)
   printf("bad file type 0%o\n", DIP(dp, di_mode));
  return (0);
 }
}
