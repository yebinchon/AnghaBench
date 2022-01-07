
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * password; int user; int realm; int scheme; } ;
typedef TYPE_1__ http_auth_params_t ;



__attribute__((used)) static void
init_http_auth_params(http_auth_params_t *s)
{
 s->scheme = s->realm = s->user = s->password = ((void*)0);
}
