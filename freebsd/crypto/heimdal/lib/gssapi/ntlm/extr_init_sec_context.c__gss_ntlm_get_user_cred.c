
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ntlm_name ;
typedef TYPE_2__* ntlm_cred ;
struct TYPE_10__ {int domain; int key; int username; } ;
struct TYPE_9__ {int domain; } ;


 int ENOMEM ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int get_user_ccache (TYPE_1__* const,int *,int *) ;
 int get_user_file (TYPE_1__* const,int *,int *) ;
 int strdup (int ) ;

int
_gss_ntlm_get_user_cred(const ntlm_name target_name,
   ntlm_cred *rcred)
{
    ntlm_cred cred;
    int ret;

    cred = calloc(1, sizeof(*cred));
    if (cred == ((void*)0))
 return ENOMEM;

    ret = get_user_file(target_name, &cred->username, &cred->key);
    if (ret)
 ret = get_user_ccache(target_name, &cred->username, &cred->key);
    if (ret) {
 free(cred);
 return ret;
    }

    cred->domain = strdup(target_name->domain);
    *rcred = cred;

    return ret;
}
