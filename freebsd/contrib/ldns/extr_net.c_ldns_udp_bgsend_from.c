
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int ldns_buffer ;


 int bind (int,struct sockaddr const*,int ) ;
 int close_socket (int) ;
 int ldns_udp_connect (struct sockaddr_storage const*,struct timeval) ;
 scalar_t__ ldns_udp_send_query (int *,int,struct sockaddr_storage const*,int ) ;

__attribute__((used)) static int
ldns_udp_bgsend_from(ldns_buffer *qbin,
  const struct sockaddr_storage *to , socklen_t tolen,
  const struct sockaddr_storage *from, socklen_t fromlen,
  struct timeval timeout)
{
 int sockfd;

 sockfd = ldns_udp_connect(to, timeout);

 if (sockfd == 0) {
  return 0;
 }

 if (from && bind(sockfd, (const struct sockaddr*)from, fromlen) == -1){
  return 0;
 }

 if (ldns_udp_send_query(qbin, sockfd, to, tolen) == 0) {
  close_socket(sockfd);
  return 0;
 }
 return sockfd;
}
