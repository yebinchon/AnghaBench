
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_char ;
struct sctphdr {int src_port; int dest_port; scalar_t__ v_tag; } ;
struct sctp_init_chunk {int dummy; } ;


 scalar_t__ fixedPort ;
 scalar_t__ ident ;
 scalar_t__ ntohs (int) ;
 scalar_t__ port ;
 int protlen ;

int
sctp_check(const u_char *data, int seq)
{
 struct sctphdr *const sctp = (struct sctphdr *) data;

 if (ntohs(sctp->src_port) != ident ||
     ntohs(sctp->dest_port) != port + (fixedPort ? 0 : seq))
  return (0);
 if (protlen < (int)(sizeof(struct sctphdr) +
     sizeof(struct sctp_init_chunk))) {
  return (sctp->v_tag ==
      (u_int32_t)((sctp->src_port << 16) | sctp->dest_port));
 } else {




  return (sctp->v_tag == 0);
 }
}
