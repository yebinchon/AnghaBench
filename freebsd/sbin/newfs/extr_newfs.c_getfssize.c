
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ intmax_t ;


 int errx (int,char*,char const*,scalar_t__) ;

void
getfssize(intmax_t *fsz, const char *s, intmax_t disksize, intmax_t reserved)
{
 intmax_t available;

 available = disksize - reserved;
 if (available <= 0)
  errx(1, "%s: reserved not less than device size %jd",
      s, disksize);
 if (*fsz == 0)
  *fsz = available;
 else if (*fsz > available)
  errx(1, "%s: maximum file system size is %jd",
      s, available);
}
