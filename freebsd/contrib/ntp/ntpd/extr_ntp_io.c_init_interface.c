
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phase; void* bfd; void* fd; } ;
typedef TYPE_1__ endpt ;


 void* INVALID_SOCKET ;
 int ZERO (TYPE_1__) ;
 int sys_interphase ;

__attribute__((used)) static void
init_interface(
 endpt *ep
 )
{
 ZERO(*ep);
 ep->fd = INVALID_SOCKET;
 ep->bfd = INVALID_SOCKET;
 ep->phase = sys_interphase;
}
