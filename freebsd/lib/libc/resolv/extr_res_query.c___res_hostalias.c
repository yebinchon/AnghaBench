
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
typedef int buf ;
struct TYPE_3__ {int options; } ;
typedef int FILE ;


 int BUFSIZ ;
 int RES_NOALIASES ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* getenv (char*) ;
 scalar_t__ issetugid () ;
 scalar_t__ isspace (unsigned char) ;
 int ns_samename (char*,char const*) ;
 int setbuf (int *,int *) ;
 int strncpy (char*,char*,size_t) ;

const char *
res_hostalias(const res_state statp, const char *name, char *dst, size_t siz) {
 char *file, *cp1, *cp2;
 char buf[BUFSIZ];
 FILE *fp;

 if (statp->options & RES_NOALIASES)
  return (((void*)0));
 if (issetugid())
  return (((void*)0));
 file = getenv("HOSTALIASES");
 if (file == ((void*)0) || (fp = fopen(file, "re")) == ((void*)0))
  return (((void*)0));
 setbuf(fp, ((void*)0));
 buf[sizeof(buf) - 1] = '\0';
 while (fgets(buf, sizeof(buf), fp)) {
  for (cp1 = buf; *cp1 && !isspace((unsigned char)*cp1); ++cp1)
   ;
  if (!*cp1)
   break;
  *cp1 = '\0';
  if (ns_samename(buf, name) == 1) {
   while (isspace((unsigned char)*++cp1))
    ;
   if (!*cp1)
    break;
   for (cp2 = cp1 + 1; *cp2 &&
        !isspace((unsigned char)*cp2); ++cp2)
    ;
   *cp2 = '\0';
   strncpy(dst, cp1, siz - 1);
   dst[siz - 1] = '\0';
   fclose(fp);
   return (dst);
  }
 }
 fclose(fp);
 return (((void*)0));
}
