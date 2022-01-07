
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int UPRINTF (char*,char*) ;
 char* altarg ;
 int another (int*,char***,char*) ;
 int code ;
 int fputs (char*,int ) ;
 int mapflag ;
 int mapin ;
 int mapout ;
 scalar_t__ proxy ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char*,int ) ;
 int ttyout ;

void
setnmap(int argc, char *argv[])
{
 char *cp;

 if (argc == 1) {
  mapflag = 0;
  fputs("Nmap off.\n", ttyout);
  code = mapflag;
  return;
 }
 if (argc == 0 ||
     (argc < 3 && !another(&argc, &argv, "mapout")) || argc > 3) {
  UPRINTF("usage: %s [mapin mapout]\n", argv[0]);
  code = -1;
  return;
 }
 mapflag = 1;
 code = 1;
 cp = strchr(altarg, ' ');
 if (proxy) {
  while(*++cp == ' ')
   continue;
  altarg = cp;
  cp = strchr(altarg, ' ');
 }
 *cp = '\0';
 (void)strlcpy(mapin, altarg, MAXPATHLEN);
 while (*++cp == ' ')
  continue;
 (void)strlcpy(mapout, cp, MAXPATHLEN);
}
