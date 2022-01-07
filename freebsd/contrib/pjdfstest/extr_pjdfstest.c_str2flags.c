
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag {char* f_str; long long f_flag; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static long long
str2flags(struct flag *tflags, char *sflags)
{
 long long flags = 0;
 unsigned int i;
 char *f;


 if (strcmp(sflags, "none") == 0 || strcmp(sflags, "0") == 0)
  return (0);
 for (f = strtok(sflags, ",|"); f != ((void*)0); f = strtok(((void*)0), ",|")) {
  for (i = 0; tflags[i].f_str != ((void*)0); i++) {
   if (strcmp(tflags[i].f_str, f) == 0)
    break;
  }
  if (tflags[i].f_str == ((void*)0)) {
   fprintf(stderr, "unknown flag '%s'\n", f);
   exit(1);
  }
  flags |= tflags[i].f_flag;
 }
 return (flags);
}
