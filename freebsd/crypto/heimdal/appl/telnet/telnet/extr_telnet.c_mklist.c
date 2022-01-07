
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISASCII (char) ;
 scalar_t__ is_unique (char*,char**,char**) ;
 scalar_t__ islower (unsigned char) ;
 scalar_t__ malloc (int) ;
 char* name_unknown ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strupr (char*) ;
 char toupper (unsigned char) ;
 char** unknown ;

__attribute__((used)) static char **
mklist(char *buf, char *name)
{
 int n;
 char c, *cp, **argvp, *cp2, **argv, **avt;

 if (name) {
  if ((int)strlen(name) > 40) {
   name = 0;
   unknown[0] = name_unknown;
  } else {
   unknown[0] = name;
   strupr(name);
  }
 } else
  unknown[0] = name_unknown;



 for (n = 1, cp = buf; *cp && *cp != ':'; cp++) {
  if (*cp == '|')
   n++;
 }



 argv = (char **)malloc((n+3)*sizeof(char *));
 if (argv == 0)
  return(unknown);




 *argv = 0;
 argvp = argv+1;
 n = 0;
 for (cp = cp2 = buf; (c = *cp); cp++) {
  if (c == '|' || c == ':') {
   *cp++ = '\0';







   if (n || (cp - cp2 > 41))
    ;
   else if (name && (strncasecmp(name, cp2, cp-cp2) == 0))
    *argv = cp2;
   else if (is_unique(cp2, argv+1, argvp))
    *argvp++ = cp2;
   if (c == ':')
    break;





   while ((c = *cp) == '|')
    cp++;
   cp2 = cp;
   n = 0;
  }






  if ((c == ' ') || !(!((c)&0x80)))
   n = 1;
  else if (islower((unsigned char)c))
   *cp = toupper((unsigned char)c);
 }






 if ((argv[1] == buf) && (strlen(argv[1]) == 2)) {
  --argvp;
  for (avt = &argv[1]; avt < argvp; avt++)
   *avt = *(avt+1);
  *argvp++ = buf;
 }






 cp = *(argvp-1);
 *argvp++ = cp;
 *argvp = 0;

 if (*argv == 0) {
  if (name)
   *argv = name;
  else {
   --argvp;
   for (avt = argv; avt < argvp; avt++)
    *avt = *(avt+1);
  }
 }
 if (*argv)
  return(argv);
 else
  return(unknown);
}
