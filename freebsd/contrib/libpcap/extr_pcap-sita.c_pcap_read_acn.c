
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef unsigned char u_char ;
struct TYPE_7__ {void* tv_usec; void* tv_sec; } ;
struct pcap_pkthdr {int caplen; void* len; TYPE_2__ ts; } ;
struct TYPE_6__ {int promisc; int timeout; } ;
struct TYPE_8__ {unsigned char* bp; int offset; scalar_t__ buffer; int direction; TYPE_1__ opt; int snapshot; int fd; } ;
typedef TYPE_3__ pcap_t ;
typedef int (* pcap_handler ) (unsigned char*,struct pcap_pkthdr*,unsigned char*) ;


 int HEADER_SIZE ;
 int acn_read_n_bytes_with_timeout (TYPE_3__*,int) ;
 int acn_start_monitor (int ,int ,int ,int ,int ) ;
 void* ntohl (int ) ;

__attribute__((used)) static int pcap_read_acn(pcap_t *handle, int max_packets, pcap_handler callback, u_char *user) {

 unsigned char packet_header[(4 * 4)];
 struct pcap_pkthdr pcap_header;


 acn_start_monitor(handle->fd, handle->snapshot, handle->opt.timeout, handle->opt.promisc, handle->direction);


 handle->bp = packet_header;
 if (acn_read_n_bytes_with_timeout(handle, (4 * 4)) == -1) return 0;

 pcap_header.ts.tv_sec = ntohl(*(uint32_t *)&packet_header[0]);
 pcap_header.ts.tv_usec = ntohl(*(uint32_t *)&packet_header[4]);
 pcap_header.caplen = ntohl(*(uint32_t *)&packet_header[8]);
 pcap_header.len = ntohl(*(uint32_t *)&packet_header[12]);

 handle->bp = (u_char *)handle->buffer + handle->offset;
 if (acn_read_n_bytes_with_timeout(handle, pcap_header.caplen) == -1) return 0;

 callback(user, &pcap_header, handle->bp);
 return 1;
}
