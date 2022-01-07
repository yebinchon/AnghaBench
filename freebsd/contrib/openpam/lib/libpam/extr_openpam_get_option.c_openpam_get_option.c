
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* current; } ;
typedef TYPE_1__ pam_handle_t ;
struct TYPE_5__ {int optc; char** optv; } ;
typedef TYPE_2__ pam_chain_t ;


 int ENTERS (char const*) ;
 int RETURNS (char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

const char *
openpam_get_option(pam_handle_t *pamh,
 const char *option)
{
 pam_chain_t *cur;
 size_t len;
 int i;

 ENTERS(option);
 if (pamh == ((void*)0) || pamh->current == ((void*)0) || option == ((void*)0))
  RETURNS(((void*)0));
 cur = pamh->current;
 len = strlen(option);
 for (i = 0; i < cur->optc; ++i) {
  if (strncmp(cur->optv[i], option, len) == 0) {
   if (cur->optv[i][len] == '\0')
    RETURNS(&cur->optv[i][len]);
   else if (cur->optv[i][len] == '=')
    RETURNS(&cur->optv[i][len + 1]);
  }
 }
 RETURNS(((void*)0));
}
