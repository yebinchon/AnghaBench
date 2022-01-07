
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;


 scalar_t__ Eflag ;
 scalar_t__ Zflag ;
 int blerase (int ,int ,int ) ;
 int blzero (int ,int ,int ) ;
 scalar_t__ debug ;
 int fsbtodb (int *,scalar_t__) ;
 int fswritefd ;
 int lfragtosize (int *,scalar_t__) ;
 int printf (char*,scalar_t__,scalar_t__) ;
 int sblock ;

__attribute__((used)) static void
clear_blocks(ufs2_daddr_t start, ufs2_daddr_t end)
{

 if (debug)
  printf("Zero frags %jd to %jd\n", start, end);
 if (Zflag)
  blzero(fswritefd, fsbtodb(&sblock, start),
      lfragtosize(&sblock, end - start + 1));
 if (Eflag)
  blerase(fswritefd, fsbtodb(&sblock, start),
      lfragtosize(&sblock, end - start + 1));
}
