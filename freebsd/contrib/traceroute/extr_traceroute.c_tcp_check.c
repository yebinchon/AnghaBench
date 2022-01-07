
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ tcp_seq ;
struct tcphdr {int th_sport; int th_dport; scalar_t__ th_seq; } ;


 scalar_t__ fixedPort ;
 scalar_t__ ident ;
 scalar_t__ ntohs (int) ;
 scalar_t__ port ;

int
tcp_check(const u_char *data, int seq)
{
 struct tcphdr *const tcp = (struct tcphdr *) data;

 return (ntohs(tcp->th_sport) == ident
     && ntohs(tcp->th_dport) == port + (fixedPort ? 0 : seq)
     && tcp->th_seq == (tcp_seq)((tcp->th_sport << 16) | tcp->th_dport));
}
