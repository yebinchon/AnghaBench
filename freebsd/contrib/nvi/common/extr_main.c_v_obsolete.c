
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char* malloc (size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;
 int v_estr (char*,int ,int *) ;

__attribute__((used)) static int
v_obsolete(
 char *name,
 char *argv[])
{
 size_t len;
 char *p;
 while (*++argv && strcmp(argv[0], "--"))
  if (argv[0][0] == '+') {
   if (argv[0][1] == '\0') {
    argv[0] = strdup("-c$");
    if (argv[0] == ((void*)0))
     goto nomem;
   } else {
    p = argv[0];
    len = strlen(argv[0]);
    argv[0] = malloc(len + 2);
    if (argv[0] == ((void*)0))
     goto nomem;
    argv[0][0] = '-';
    argv[0][1] = 'c';
    (void)strlcpy(argv[0] + 2, p + 1, len);
   }
  } else if (argv[0][0] == '-')
   if (argv[0][1] == '\0') {
    argv[0] = strdup("-s");
    if (argv[0] == ((void*)0)) {
nomem: v_estr(name, errno, ((void*)0));
     return (1);
    }
   } else
    if ((argv[0][1] == 'c' || argv[0][1] == 'T' ||
        argv[0][1] == 't' || argv[0][1] == 'w') &&
        argv[0][2] == '\0')
     ++argv;
 return (0);
}
