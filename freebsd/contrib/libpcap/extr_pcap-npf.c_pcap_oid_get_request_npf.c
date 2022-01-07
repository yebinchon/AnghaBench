
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int bpf_u_int32 ;


 int oid_get_request (int ,int ,void*,size_t*,int ) ;

__attribute__((used)) static int
pcap_oid_get_request_npf(pcap_t *p, bpf_u_int32 oid, void *data, size_t *lenp)
{
 struct pcap_win *pw = p->priv;

 return (oid_get_request(pw->adapter, oid, data, lenp, p->errbuf));
}
