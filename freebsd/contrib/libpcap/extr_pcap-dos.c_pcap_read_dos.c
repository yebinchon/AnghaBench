
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ fd; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_handler ;


 scalar_t__ PACKET_COUNT_IS_UNLIMITED (int) ;
 int _w32_os_yield () ;
 int pcap_read_one (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
pcap_read_dos (pcap_t *p, int cnt, pcap_handler callback, u_char *data)
{
  int rc, num = 0;

  while (num <= cnt || PACKET_COUNT_IS_UNLIMITED(cnt))
  {
    if (p->fd <= 0)
       return (-1);
    rc = pcap_read_one (p, callback, data);
    if (rc > 0)
       num++;
    if (rc < 0)
       break;
    _w32_os_yield();
  }
  return (num);
}
