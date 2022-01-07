
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_5__ {int options; } ;


 int MAXDNAME ;
 int NO_RECOVERY ;
 int RES_DEBUG ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 int printf (char*,char const*,char const*,int,int) ;
 int res_nquery (TYPE_1__*,char const*,int,int,int *,int) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

int
res_nquerydomain(res_state statp,
     const char *name,
     const char *domain,
     int class, int type,
     u_char *answer,
     int anslen)
{
 char nbuf[MAXDNAME];
 const char *longname = nbuf;
 int n, d;






 if (domain == ((void*)0)) {




  n = strlen(name);
  if (n >= MAXDNAME) {
   RES_SET_H_ERRNO(statp, NO_RECOVERY);
   return (-1);
  }
  n--;
  if (n >= 0 && name[n] == '.') {
   strncpy(nbuf, name, n);
   nbuf[n] = '\0';
  } else
   longname = name;
 } else {
  n = strlen(name);
  d = strlen(domain);
  if (n + d + 1 >= MAXDNAME) {
   RES_SET_H_ERRNO(statp, NO_RECOVERY);
   return (-1);
  }
  sprintf(nbuf, "%s.%s", name, domain);
 }
 return (res_nquery(statp, longname, class, type, answer, anslen));
}
