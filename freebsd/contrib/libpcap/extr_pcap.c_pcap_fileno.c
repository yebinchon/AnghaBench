
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; scalar_t__ handle; } ;
typedef TYPE_1__ pcap_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int PCAP_ERROR ;

int
pcap_fileno(pcap_t *p)
{

 return (p->fd);






}
