
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_assoc_value {scalar_t__ assoc_value; } ;
typedef int socklen_t ;
typedef scalar_t__ sa_family_t ;
typedef int av ;


 int AF_INET ;
 int AF_INET6 ;
 int IPPROTO_SCTP ;
 int SCTP_GET_ADDR_LEN ;
 int SOCK_SEQPACKET ;
 int close (int) ;
 int getsockopt (int,int ,int ,struct sctp_assoc_value*,int*) ;
 int socket (int ,int ,int ) ;

int
sctp_getaddrlen(sa_family_t family)
{
 int ret, sd;
 socklen_t siz;
 struct sctp_assoc_value av;

 av.assoc_value = family;
 siz = sizeof(av);





 sd = -1;

 if (sd == -1) {
  return (-1);
 }
 ret = getsockopt(sd, IPPROTO_SCTP, SCTP_GET_ADDR_LEN, &av, &siz);
 close(sd);
 if (ret == 0) {
  return ((int)av.assoc_value);
 } else {
  return (-1);
 }
}
