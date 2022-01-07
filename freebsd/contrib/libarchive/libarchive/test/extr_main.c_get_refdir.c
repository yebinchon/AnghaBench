
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugBreak () ;
 char* KNOWNREF ;
 char* LIBRARY ;
 size_t PATH_MAX ;
 char* PROGRAM ;
 char* PROGRAM_ALIAS ;
 char* calloc (size_t,int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* getcwd (int *,size_t) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int printf (char*,...) ;
 char* slurpfile (int *,char*,char*,char*) ;
 int snprintf (char*,size_t,char*,char const*,...) ;
 int stderr ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int strncat (char*,char*,size_t) ;

__attribute__((used)) static char *
get_refdir(const char *d)
{
 size_t tried_size, buff_size;
 char *buff, *tried, *pwd = ((void*)0), *p = ((void*)0);




 buff_size = 8192;

 buff = calloc(buff_size, 1);
 if (buff == ((void*)0)) {
  fprintf(stderr, "Unable to allocate memory\n");
  exit(1);
 }


 tried_size = buff_size * 2;
 tried = calloc(tried_size, 1);
 if (tried == ((void*)0)) {
  fprintf(stderr, "Unable to allocate memory\n");
  exit(1);
 }


 if (d != ((void*)0)) {
  pwd = ((void*)0);
  snprintf(buff, buff_size, "%s", d);
  p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
  if (p != ((void*)0)) goto success;
  strncat(tried, buff, tried_size - strlen(tried) - 1);
  strncat(tried, "\n", tried_size - strlen(tried) - 1);
  goto failure;
 }





 pwd = getcwd(((void*)0), 0);

 while (pwd[strlen(pwd) - 1] == '\n')
  pwd[strlen(pwd) - 1] = '\0';


 snprintf(buff, buff_size, "%s", pwd);
 p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
 if (p != ((void*)0)) goto success;
 strncat(tried, buff, tried_size - strlen(tried) - 1);
 strncat(tried, "\n", tried_size - strlen(tried) - 1);

 snprintf(buff, buff_size, "%s/test", pwd);
 p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
 if (p != ((void*)0)) goto success;
 strncat(tried, buff, tried_size - strlen(tried) - 1);
 strncat(tried, "\n", tried_size - strlen(tried) - 1);




 snprintf(buff, buff_size, "%s/%s/test", pwd, PROGRAM);

 p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
 if (p != ((void*)0)) goto success;
 strncat(tried, buff, tried_size - strlen(tried) - 1);
 strncat(tried, "\n", tried_size - strlen(tried) - 1);
 if (memcmp(pwd, "/usr/obj", 8) == 0) {
  snprintf(buff, buff_size, "%s", pwd + 8);
  p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
  if (p != ((void*)0)) goto success;
  strncat(tried, buff, tried_size - strlen(tried) - 1);
  strncat(tried, "\n", tried_size - strlen(tried) - 1);

  snprintf(buff, buff_size, "%s/test", pwd + 8);
  p = slurpfile(((void*)0), "%s/%s", buff, KNOWNREF);
  if (p != ((void*)0)) goto success;
  strncat(tried, buff, tried_size - strlen(tried) - 1);
  strncat(tried, "\n", tried_size - strlen(tried) - 1);
 }

failure:
 printf("Unable to locate known reference file %s\n", KNOWNREF);
 printf("  Checked following directories:\n%s\n", tried);
 printf("Use -r option to specify full path to reference directory\n");



 exit(1);

success:
 free(p);
 free(pwd);
 free(tried);


 p = strdup(buff);
 free(buff);
 return p;
}
