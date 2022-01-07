
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pollfd {int revents; int events; int fd; } ;
struct pcap_netmap {int * cb_arg; int cb; struct nm_desc* d; } ;
struct nm_desc {int dummy; } ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_5__ {TYPE_1__ opt; scalar_t__ break_loop; int fd; struct pcap_netmap* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int pcap_handler ;


 int PCAP_ERROR_BREAK ;
 int POLLIN ;
 scalar_t__ errno ;
 int nm_dispatch (void*,int,void*,void*) ;
 scalar_t__ pcap_netmap_filter ;
 int poll (struct pollfd*,int,int ) ;

__attribute__((used)) static int
pcap_netmap_dispatch(pcap_t *p, int cnt, pcap_handler cb, u_char *user)
{
 int ret;
 struct pcap_netmap *pn = p->priv;
 struct nm_desc *d = pn->d;
 struct pollfd pfd = { .fd = p->fd, .events = POLLIN, .revents = 0 };

 pn->cb = cb;
 pn->cb_arg = user;

 for (;;) {
  if (p->break_loop) {
   p->break_loop = 0;
   return PCAP_ERROR_BREAK;
  }


  ret = nm_dispatch((void *)d, cnt, (void *)pcap_netmap_filter, (void *)p);
  if (ret != 0)
   break;
  errno = 0;
  ret = poll(&pfd, 1, p->opt.timeout);
 }
 return ret;
}
