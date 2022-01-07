
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descr {scalar_t__ s; scalar_t__ len; int size; scalar_t__ buf; } ;


 int memset (scalar_t__,int ,int ) ;
 scalar_t__ rk_INVALID_SOCKET ;
 int rk_closesocket (scalar_t__) ;

__attribute__((used)) static void
clear_descr(struct descr *d)
{
    if(d->buf)
 memset(d->buf, 0, d->size);
    d->len = 0;
    if(d->s != rk_INVALID_SOCKET)
 rk_closesocket(d->s);
    d->s = rk_INVALID_SOCKET;
}
