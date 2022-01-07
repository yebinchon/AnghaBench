
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * v; int * s; } ;
typedef TYPE_1__ SRP_user_pwd ;
typedef int BIGNUM ;



__attribute__((used)) static int SRP_user_pwd_set_sv_BN(SRP_user_pwd *vinfo, BIGNUM *s, BIGNUM *v)
{
    vinfo->v = v;
    vinfo->s = s;
    return (vinfo->s != ((void*)0) && vinfo->v != ((void*)0));
}
