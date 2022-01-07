
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int buf ;


 int DEBUG_PRINTF (int,char*) ;
 int MAXPATHLEN ;
 int S_ISREG (int ) ;
 char** signature_exts ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 unsigned char* verify_asc (char*,int) ;
 unsigned char* verify_sig (char*,int) ;

unsigned char *
verify_signed(const char *filename, int flags)
{
 struct stat st;
 char buf[MAXPATHLEN];
 const char **se;

 for (se = signature_exts; *se; se++) {
  snprintf(buf, sizeof(buf), "%s.%s", filename, *se);
  if (stat(buf, &st) < 0 || !S_ISREG(st.st_mode))
   continue;
  DEBUG_PRINTF(5, ("verify_signed: %s\n", buf));




  return (verify_sig(buf, flags));
 }
 return (((void*)0));
}
