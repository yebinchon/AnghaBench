
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 int fclose (int *) ;
 int fflush (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static const char *
cpio_rename(const char *name)
{
 static char buff[1024];
 FILE *t;
 char *p, *ret;
 t = fopen("/dev/tty", "r+");
 if (t == ((void*)0))
  return (name);
 fprintf(t, "%s (Enter/./(new name))? ", name);
 fflush(t);


 p = fgets(buff, sizeof(buff), t);
 fclose(t);
 if (p == ((void*)0))

  return (((void*)0));

 while (*p == ' ' || *p == '\t')
  ++p;
 if (*p == '\n' || *p == '\0')

  return (((void*)0));
 if (*p == '.' && p[1] == '\n')

  return (name);
 ret = p;

 while (*p != '\0' && *p != '\n')
  ++p;

 *p = '\0';
 return (ret);
}
