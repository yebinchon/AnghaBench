
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union u_spcl {int dummy; } u_spcl ;
typedef int uintmax_t ;
struct TYPE_2__ {int name; scalar_t__ ino; } ;


 int Bcvt ;
 int CHECKSUM ;
 int FAIL ;
 int GOOD ;
 TYPE_1__ curfile ;
 int fprintf (int ,char*,int,int ,int ) ;
 int stderr ;
 scalar_t__ swabl (int ) ;

__attribute__((used)) static int
checksum(int *buf)
{
 int i, j;

 j = sizeof(union u_spcl) / sizeof(int);
 i = 0;
 if (!Bcvt) {
  do
   i += *buf++;
  while (--j);
 } else {


  do
   i += swabl(*buf++);
  while (--j);
 }

 if (i != CHECKSUM) {
  fprintf(stderr, "Checksum error %o, inode %ju file %s\n", i,
      (uintmax_t)curfile.ino, curfile.name);
  return(FAIL);
 }
 return(GOOD);
}
