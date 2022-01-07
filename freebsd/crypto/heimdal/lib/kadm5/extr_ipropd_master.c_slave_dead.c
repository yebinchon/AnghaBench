
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int fd; int name; } ;
typedef TYPE_1__ slave ;
typedef int krb5_context ;


 int SLAVE_F_DEAD ;
 int krb5_warnx (int ,char*,int ) ;
 int rk_INVALID_SOCKET ;
 int rk_IS_BAD_SOCKET (int ) ;
 int rk_closesocket (int ) ;
 int slave_seen (TYPE_1__*) ;

__attribute__((used)) static void
slave_dead(krb5_context context, slave *s)
{
    krb5_warnx(context, "slave %s dead", s->name);

    if (!rk_IS_BAD_SOCKET(s->fd)) {
 rk_closesocket (s->fd);
 s->fd = rk_INVALID_SOCKET;
    }
    s->flags |= SLAVE_F_DEAD;
    slave_seen(s);
}
