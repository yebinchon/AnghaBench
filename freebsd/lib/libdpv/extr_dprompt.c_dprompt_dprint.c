
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintf (int,char*,char*,char const*,int ,char const*,int) ;
 int dprompt ;
 int fsync (int) ;
 int gauge_percent ;
 scalar_t__ use_color ;

void
dprompt_dprint(int fd, const char *prefix, const char *append, int overall)
{
 int percent = gauge_percent;

 if (overall >= 0 && overall <= 100)
  gauge_percent = percent = overall;
 dprintf(fd, "XXX\n%s%s%s%s\nXXX\n%i\n", use_color ? "\\Zn" : "",
     prefix ? prefix : "", dprompt, append ? append : "", percent);
 fsync(fd);
}
