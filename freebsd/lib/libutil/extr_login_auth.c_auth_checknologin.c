
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 char const* _PATH_NOLOGIN ;
 scalar_t__ auth_cat (char const*) ;
 int exit (int) ;
 scalar_t__ login_getcapbool (int *,char*,int ) ;
 char* login_getcapstr (int *,char*,char*,int *) ;

void
auth_checknologin(login_cap_t *lc)
{
  const char *file;


  if (login_getcapbool(lc, "ignorenologin", 0))
    return;


  if ((file = login_getcapstr(lc, "nologin", "", ((void*)0))) == ((void*)0))
    exit(1);






  if ((*file && auth_cat(file)) || auth_cat(_PATH_NOLOGIN))
    exit(1);
}
