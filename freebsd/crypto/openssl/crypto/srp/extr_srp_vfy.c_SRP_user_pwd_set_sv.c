
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int * v; int * s; } ;
typedef TYPE_1__ SRP_user_pwd ;


 void* BN_bin2bn (unsigned char*,int,int *) ;
 int BN_free (int *) ;
 int MAX_LEN ;
 int t_fromb64 (unsigned char*,int,char const*) ;

__attribute__((used)) static int SRP_user_pwd_set_sv(SRP_user_pwd *vinfo, const char *s,
                               const char *v)
{
    unsigned char tmp[MAX_LEN];
    int len;

    vinfo->v = ((void*)0);
    vinfo->s = ((void*)0);

    len = t_fromb64(tmp, sizeof(tmp), v);
    if (len < 0)
        return 0;
    if (((void*)0) == (vinfo->v = BN_bin2bn(tmp, len, ((void*)0))))
        return 0;
    len = t_fromb64(tmp, sizeof(tmp), s);
    if (len < 0)
        goto err;
    vinfo->s = BN_bin2bn(tmp, len, ((void*)0));
    if (vinfo->s == ((void*)0))
        goto err;
    return 1;
 err:
    BN_free(vinfo->v);
    vinfo->v = ((void*)0);
    return 0;
}
