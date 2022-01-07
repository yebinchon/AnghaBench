
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MaxPathLen ;
 char* altarg ;
 int another (int*,char***,char*) ;
 int code ;
 int mapflag ;
 int mapin ;
 int mapout ;
 int printf (char*,...) ;
 scalar_t__ proxy ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char*,int ) ;

void
setnmap(int argc, char **argv)
{
 char *cp;

 if (argc == 1) {
  mapflag = 0;
  printf("Nmap off.\n");
  code = mapflag;
  return;
 }
 if (argc < 3 && !another(&argc, &argv, "mapout")) {
  printf("Usage: %s [mapin mapout]\n",argv[0]);
  code = -1;
  return;
 }
 mapflag = 1;
 code = 1;
 cp = strchr(altarg, ' ');
 if (cp == ((void*)0)) {
  printf("Usage: %s missing space\n",argv[0]);
  code = -1;
  return;
 }
 if (proxy) {
  while(*++cp == ' ')
   continue;
  altarg = cp;
  cp = strchr(altarg, ' ');
 }
 *cp = '\0';
 strlcpy(mapin, altarg, MaxPathLen);
 while (*++cp == ' ')
  continue;
 strlcpy(mapout, cp, MaxPathLen);
}
