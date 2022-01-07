
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct regional {int dummy; } ;
struct edns_data {int opt_list; } ;
struct comm_point {scalar_t__ type; int tcp_keepalive; int tcp_timeout_msec; } ;
typedef int data ;


 int LDNS_EDNS_KEEPALIVE ;
 scalar_t__ comm_udp ;
 int edns_opt_list_append (int *,int ,int,scalar_t__*,struct regional*) ;
 scalar_t__ edns_opt_list_find (int ,int ) ;

__attribute__((used)) static int edns_keepalive(struct edns_data* edns_out, struct edns_data* edns_in,
  struct comm_point* c, struct regional* region)
{
 if(c->type == comm_udp)
  return 1;






 if(c->tcp_keepalive ||
  edns_opt_list_find(edns_in->opt_list, LDNS_EDNS_KEEPALIVE)) {
  int keepalive = c->tcp_timeout_msec / 100;
  uint8_t data[2];
  data[0] = (uint8_t)((keepalive >> 8) & 0xff);
  data[1] = (uint8_t)(keepalive & 0xff);
  if(!edns_opt_list_append(&edns_out->opt_list, LDNS_EDNS_KEEPALIVE,
   sizeof(data), data, region))
   return 0;
  c->tcp_keepalive = 1;
 }
 return 1;
}
