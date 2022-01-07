
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* krb5_context ;
typedef int krb5_boolean ;
struct TYPE_3__ {int flags; } ;


 int FALSE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KRB5_CTX_F_HOMEDIR_ACCESS ;
 int allow_homedir ;
 scalar_t__ geteuid () ;
 int homedir_mutex ;

krb5_boolean
_krb5_homedir_access(krb5_context context)
{
    krb5_boolean allow;







    if (context && (context->flags & KRB5_CTX_F_HOMEDIR_ACCESS) == 0)
 return FALSE;

    HEIMDAL_MUTEX_lock(&homedir_mutex);
    allow = allow_homedir;
    HEIMDAL_MUTEX_unlock(&homedir_mutex);
    return allow;
}
