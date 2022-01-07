
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_5__ {scalar_t__ num_auth_methods; } ;
struct TYPE_4__ {size_t num_auth_methods; int * auth_methods; } ;
typedef TYPE_1__ Authctxt ;


 scalar_t__ MATCH_NONE ;
 scalar_t__ list_starts_with (int ,char const*,char const*) ;
 TYPE_2__ options ;

int
auth2_method_allowed(Authctxt *authctxt, const char *method,
    const char *submethod)
{
 u_int i;





 if (options.num_auth_methods == 0)
  return 1;
 for (i = 0; i < authctxt->num_auth_methods; i++) {
  if (list_starts_with(authctxt->auth_methods[i], method,
      submethod) != MATCH_NONE)
   return 1;
 }
 return 0;
}
