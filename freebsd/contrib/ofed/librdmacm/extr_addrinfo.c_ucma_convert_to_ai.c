
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int ai_flags; scalar_t__ ai_family; int ai_qp_type; int ai_port_space; int ai_dst_canonname; int ai_dst_addr; int ai_dst_len; int ai_src_addr; int ai_src_len; } ;
struct addrinfo {scalar_t__ ai_family; int * ai_next; int ai_canonname; int ai_addr; int ai_addrlen; void* ai_protocol; int ai_socktype; int ai_flags; } ;


 scalar_t__ AF_IB ;
 int AI_NUMERICHOST ;
 int AI_PASSIVE ;





 void* IPPROTO_TCP ;
 void* IPPROTO_UDP ;
 int RAI_NUMERICHOST ;
 int RAI_PASSIVE ;




 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static void ucma_convert_to_ai(struct addrinfo *ai,
          const struct rdma_addrinfo *rai)
{
 memset(ai, 0, sizeof(*ai));
 if (rai->ai_flags & RAI_PASSIVE)
  ai->ai_flags = AI_PASSIVE;
 if (rai->ai_flags & RAI_NUMERICHOST)
  ai->ai_flags |= AI_NUMERICHOST;
 if (rai->ai_family != AF_IB)
  ai->ai_family = rai->ai_family;

 switch (rai->ai_qp_type) {
 case 136:
 case 135:
 case 132:
 case 133:
  ai->ai_socktype = SOCK_STREAM;
  break;
 case 134:
  ai->ai_socktype = SOCK_DGRAM;
  break;
 }

 switch (rai->ai_port_space) {
 case 129:
  ai->ai_protocol = IPPROTO_TCP;
  break;
 case 130:
 case 128:
  ai->ai_protocol = IPPROTO_UDP;
  break;
 case 131:
  if (ai->ai_socktype == SOCK_STREAM)
   ai->ai_protocol = IPPROTO_TCP;
  else if (ai->ai_socktype == SOCK_DGRAM)
   ai->ai_protocol = IPPROTO_UDP;
  break;
 }

 if (rai->ai_flags & RAI_PASSIVE) {
  ai->ai_addrlen = rai->ai_src_len;
  ai->ai_addr = rai->ai_src_addr;
 } else {
  ai->ai_addrlen = rai->ai_dst_len;
  ai->ai_addr = rai->ai_dst_addr;
 }
 ai->ai_canonname = rai->ai_dst_canonname;
 ai->ai_next = ((void*)0);
}
