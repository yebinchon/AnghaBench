
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;


 int EEXIT ;
 scalar_t__ bkgrdcheck ;
 int exit (int ) ;
 int pfatal (char*,char const*,long) ;
 scalar_t__ preen ;
 int printf (char*) ;
 scalar_t__ reply (char*) ;

void
rwerror(const char *mesg, ufs2_daddr_t blk)
{

 if (bkgrdcheck)
  exit(EEXIT);
 if (preen == 0)
  printf("\n");
 pfatal("CANNOT %s: %ld", mesg, (long)blk);
 if (reply("CONTINUE") == 0)
  exit(EEXIT);
}
