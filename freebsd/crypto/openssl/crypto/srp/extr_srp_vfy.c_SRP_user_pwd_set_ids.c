
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * info; int * id; } ;
typedef TYPE_1__ SRP_user_pwd ;


 void* OPENSSL_strdup (char const*) ;

__attribute__((used)) static int SRP_user_pwd_set_ids(SRP_user_pwd *vinfo, const char *id,
                                const char *info)
{
    if (id != ((void*)0) && ((void*)0) == (vinfo->id = OPENSSL_strdup(id)))
        return 0;
    return (info == ((void*)0) || ((void*)0) != (vinfo->info = OPENSSL_strdup(info)));
}
