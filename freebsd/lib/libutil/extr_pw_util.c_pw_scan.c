
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int __pw_initpwd (struct passwd*) ;
 int __pw_scan (char*,struct passwd*,int) ;
 int free (char*) ;
 struct passwd* pw_dup (struct passwd*) ;
 char* strdup (char const*) ;

struct passwd *
pw_scan(const char *line, int flags)
{
 struct passwd pw, *ret;
 char *bp;

 if ((bp = strdup(line)) == ((void*)0))
  return (((void*)0));
 __pw_initpwd(&pw);
 if (!__pw_scan(bp, &pw, flags)) {
  free(bp);
  return (((void*)0));
 }
 ret = pw_dup(&pw);
 free(bp);
 return (ret);
}
