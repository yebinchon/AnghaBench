
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max; } ;
struct TYPE_5__ {TYPE_1__ qc; } ;
typedef TYPE_2__ params_t ;
typedef int pam_handle_t ;


 int MESSAGE_TOOLONG ;
 int MESSAGE_TRUNCATED ;
 int PAM_ERROR_MSG ;
 int PAM_TEXT_INFO ;
 int say (int *,int ,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int check_max(params_t *params, pam_handle_t *pamh, const char *newpass)
{
 if ((int)strlen(newpass) > params->qc.max) {
  if (params->qc.max != 8) {
   say(pamh, PAM_ERROR_MSG, MESSAGE_TOOLONG);
   return -1;
  }
  say(pamh, PAM_TEXT_INFO, MESSAGE_TRUNCATED);
 }

 return 0;
}
