
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ password; scalar_t__ user; scalar_t__ realm; scalar_t__ scheme; } ;
typedef TYPE_1__ http_auth_params_t ;


 int free (scalar_t__) ;
 int init_http_auth_params (TYPE_1__*) ;

__attribute__((used)) static void
clean_http_auth_params(http_auth_params_t *s)
{
 if (s->scheme)
  free(s->scheme);
 if (s->realm)
  free(s->realm);
 if (s->user)
  free(s->user);
 if (s->password)
  free(s->password);
 init_http_auth_params(s);
}
