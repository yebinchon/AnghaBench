
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int (* read_op ) (TYPE_1__*,int,int ,int *) ;int * rfile; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_handler ;


 int PACKET_COUNT_IS_UNLIMITED (int) ;
 int pcap_offline_read (TYPE_1__*,int,int ,int *) ;
 int stub1 (TYPE_1__*,int,int ,int *) ;

int
pcap_loop(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 register int n;

 for (;;) {
  if (p->rfile != ((void*)0)) {



   n = pcap_offline_read(p, cnt, callback, user);
  } else {




   do {
    n = p->read_op(p, cnt, callback, user);
   } while (n == 0);
  }
  if (n <= 0)
   return (n);
  if (!PACKET_COUNT_IS_UNLIMITED(cnt)) {
   cnt -= n;
   if (cnt <= 0)
    return (0);
  }
 }
}
