
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** env; } ;
typedef TYPE_1__ pam_handle_t ;


 int EINVAL ;
 int ENTERS (char const*) ;
 int RETURNS (int *) ;
 int errno ;
 int openpam_findenv (TYPE_1__*,char const*,size_t) ;

const char *
pam_getenv(pam_handle_t *pamh,
 const char *name)
{
 size_t len;
 int i;

 ENTERS(name);
 for (len = 0; name[len] != '\0'; ++len) {
  if (name[len] == '=') {
   errno = EINVAL;
   RETURNS(((void*)0));
  }
 }
 if ((i = openpam_findenv(pamh, name, len)) < 0)
  RETURNS(((void*)0));

 RETURNS(pamh->env[i] + len + 1);
}
