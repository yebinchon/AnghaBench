
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;
typedef int intmax_t ;


 scalar_t__ Nflag ;
 scalar_t__ bwrite (int *,scalar_t__,char*,int) ;
 int disk ;
 int err (int,char*,int,int ) ;
 scalar_t__ part_ofs ;

__attribute__((used)) static void
wtfs(ufs2_daddr_t bno, int size, char *bf)
{
 if (Nflag)
  return;
 if (bwrite(&disk, part_ofs + bno, bf, size) < 0)
  err(36, "wtfs: %d bytes at sector %jd", size, (intmax_t)bno);
}
