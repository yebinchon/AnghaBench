
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_6__ {struct TYPE_6__* rdomain; int addrs; } ;
struct TYPE_5__ {size_t num_listen_addrs; TYPE_2__* listen_addrs; } ;


 int fatal (char*) ;
 int free (TYPE_2__*) ;
 int freeaddrinfo (int ) ;
 int listen_on_addrs (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int num_listen_socks ;
 TYPE_1__ options ;

__attribute__((used)) static void
server_listen(void)
{
 u_int i;

 for (i = 0; i < options.num_listen_addrs; i++) {
  listen_on_addrs(&options.listen_addrs[i]);
  freeaddrinfo(options.listen_addrs[i].addrs);
  free(options.listen_addrs[i].rdomain);
  memset(&options.listen_addrs[i], 0,
      sizeof(options.listen_addrs[i]));
 }
 free(options.listen_addrs);
 options.listen_addrs = ((void*)0);
 options.num_listen_addrs = 0;

 if (!num_listen_socks)
  fatal("Cannot bind any address.");
}
