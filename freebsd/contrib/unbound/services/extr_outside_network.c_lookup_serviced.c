
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {struct serviced_query* key; } ;
struct serviced_query {int dnssec; struct edns_option* opt_list; struct outside_network* outnet; int addrlen; int addr; int qbuflen; int qbuf; TYPE_1__ node; } ;
struct outside_network {int serviced; } ;
struct edns_option {int dummy; } ;
typedef int socklen_t ;
typedef int sldns_buffer ;


 int memcpy (int *,struct sockaddr_storage*,int ) ;
 scalar_t__ rbtree_search (int ,struct serviced_query*) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_limit (int *) ;

__attribute__((used)) static struct serviced_query*
lookup_serviced(struct outside_network* outnet, sldns_buffer* buff, int dnssec,
 struct sockaddr_storage* addr, socklen_t addrlen,
 struct edns_option* opt_list)
{
 struct serviced_query key;
 key.node.key = &key;
 key.qbuf = sldns_buffer_begin(buff);
 key.qbuflen = sldns_buffer_limit(buff);
 key.dnssec = dnssec;
 memcpy(&key.addr, addr, addrlen);
 key.addrlen = addrlen;
 key.outnet = outnet;
 key.opt_list = opt_list;
 return (struct serviced_query*)rbtree_search(outnet->serviced, &key);
}
