
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env_count; char** env; } ;
typedef TYPE_1__ pam_handle_t ;


 int ENOENT ;
 int ENTER () ;
 int RETURNN (int) ;
 int errno ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

int
openpam_findenv(pam_handle_t *pamh,
 const char *name,
 size_t len)
{
 int i;

 ENTER();
 for (i = 0; i < pamh->env_count; ++i)
  if (strncmp(pamh->env[i], name, len) == 0 &&
      pamh->env[i][len] == '=')
   RETURNN(i);
 errno = ENOENT;
 RETURNN(-1);
}
