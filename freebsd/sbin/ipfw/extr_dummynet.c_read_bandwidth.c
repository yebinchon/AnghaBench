
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int IFNAMSIZ ;
 scalar_t__ _substrcmp2 (char*,char*,char*) ;
 int errx (int,char*) ;
 int strlcpy (char*,char*,int) ;
 int strtoul (char*,char**,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
read_bandwidth(char *arg, int *bandwidth, char *if_name, int namelen)
{
 if (*bandwidth != -1)
  warnx("duplicate token, override bandwidth value!");

 if (arg[0] >= 'a' && arg[0] <= 'z') {
  if (!if_name) {
   errx(1, "no if support");
  }
  if (namelen >= IFNAMSIZ)
   warn("interface name truncated");
  namelen--;

  strlcpy(if_name, arg, namelen);
  *bandwidth = 0;
 } else {
  int bw;
  char *end = ((void*)0);

  bw = strtoul(arg, &end, 0);
  if (*end == 'K' || *end == 'k') {
   end++;
   bw *= 1000;
  } else if (*end == 'M' || *end == 'm') {
   end++;
   bw *= 1000000;
  } else if (*end == 'G' || *end == 'g') {
   end++;
   bw *= 1000000000;
  }
  if ((*end == 'B' &&
   _substrcmp2(end, "Bi", "Bit/s") != 0) ||
      _substrcmp2(end, "by", "bytes") == 0)
   bw *= 8;

  if (bw < 0)
   errx(EX_DATAERR, "bandwidth too large");

  *bandwidth = bw;
  if (if_name)
   if_name[0] = '\0';
 }
}
