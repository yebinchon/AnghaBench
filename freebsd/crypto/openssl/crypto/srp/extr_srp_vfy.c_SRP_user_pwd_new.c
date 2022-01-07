
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * info; int * id; int * v; int * s; int * g; int * N; } ;
typedef TYPE_1__ SRP_user_pwd ;


 TYPE_1__* OPENSSL_malloc (int) ;

__attribute__((used)) static SRP_user_pwd *SRP_user_pwd_new(void)
{
    SRP_user_pwd *ret;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) == ((void*)0)) {

        return ((void*)0);
    }
    ret->N = ((void*)0);
    ret->g = ((void*)0);
    ret->s = ((void*)0);
    ret->v = ((void*)0);
    ret->id = ((void*)0);
    ret->info = ((void*)0);
    return ret;
}
