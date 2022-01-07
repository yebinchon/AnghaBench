
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct res_target {int dummy; } ;
typedef TYPE_1__* res_state ;
typedef int nbuf ;
struct TYPE_5__ {int options; } ;


 int MAXDNAME ;
 int NO_RECOVERY ;
 int RES_DEBUG ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 int printf (char*,char const*,char const*) ;
 int res_queryN (char const*,struct res_target*,TYPE_1__*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int
res_querydomainN(const char *name, const char *domain,
    struct res_target *target, res_state res)
{
 char nbuf[MAXDNAME];
 const char *longname = nbuf;
 size_t n, d;






 if (domain == ((void*)0)) {




  n = strlen(name);
  if (n >= MAXDNAME) {
   RES_SET_H_ERRNO(res, NO_RECOVERY);
   return (-1);
  }
  if (n > 0 && name[--n] == '.') {
   strncpy(nbuf, name, n);
   nbuf[n] = '\0';
  } else
   longname = name;
 } else {
  n = strlen(name);
  d = strlen(domain);
  if (n + d + 1 >= MAXDNAME) {
   RES_SET_H_ERRNO(res, NO_RECOVERY);
   return (-1);
  }
  snprintf(nbuf, sizeof(nbuf), "%s.%s", name, domain);
 }
 return (res_queryN(longname, target, res));
}
