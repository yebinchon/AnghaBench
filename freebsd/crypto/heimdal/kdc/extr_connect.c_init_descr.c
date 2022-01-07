
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct descr {int s; int __ss; struct sockaddr* sa; } ;


 int memset (struct descr*,int ,int) ;
 int rk_INVALID_SOCKET ;

__attribute__((used)) static void
init_descr(struct descr *d)
{
    memset(d, 0, sizeof(*d));
    d->sa = (struct sockaddr *)&d->__ss;
    d->s = rk_INVALID_SOCKET;
}
