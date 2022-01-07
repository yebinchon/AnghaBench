
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int intmax_t ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {int ino_state; } ;





 int EEXIT ;



 int errx (int ,char*,int) ;
 TYPE_1__* inoinfo (scalar_t__) ;
 int pfatal (char*,int ,char const*,int ) ;
 int printf (char*) ;

void
blkerror(ino_t ino, const char *type, ufs2_daddr_t blk)
{

 pfatal("%jd %s I=%ju", (intmax_t)blk, type, (uintmax_t)ino);
 printf("\n");
 switch (inoinfo(ino)->ino_state) {

 case 129:
 case 128:
  inoinfo(ino)->ino_state = 130;
  return;

 case 132:
 case 131:
  inoinfo(ino)->ino_state = 133;
  return;

 case 130:
 case 133:
  return;

 default:
  errx(EEXIT, "BAD STATE %d TO BLKERR", inoinfo(ino)->ino_state);

 }
}
