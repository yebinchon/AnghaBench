
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ ac; struct TYPE_5__* name; int fd; } ;
typedef TYPE_1__ slave ;
typedef int krb5_context ;


 int free (TYPE_1__*) ;
 int krb5_auth_con_free (int ,scalar_t__) ;
 int rk_IS_BAD_SOCKET (int ) ;
 int rk_closesocket (int ) ;

__attribute__((used)) static void
remove_slave (krb5_context context, slave *s, slave **root)
{
    slave **p;

    if (!rk_IS_BAD_SOCKET(s->fd))
 rk_closesocket (s->fd);
    if (s->name)
 free (s->name);
    if (s->ac)
 krb5_auth_con_free (context, s->ac);

    for (p = root; *p; p = &(*p)->next)
 if (*p == s) {
     *p = s->next;
     break;
 }
    free (s);
}
