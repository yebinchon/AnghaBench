
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timeval {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int ldns_status ;
typedef int ldns_buffer ;


 int LDNS_STATUS_NETWORK_ERR ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_SOCKET_ERROR ;
 int close_socket (int) ;
 int ldns_sock_nonblock (int) ;
 int ldns_sock_wait (int,struct timeval,int ) ;
 int ldns_udp_bgsend_from (int *,struct sockaddr_storage const*,int ,struct sockaddr_storage const*,int ,struct timeval) ;
 int * ldns_udp_read_wire (int,size_t*,int *,int *) ;

__attribute__((used)) static ldns_status
ldns_udp_send_from(uint8_t **result, ldns_buffer *qbin,
  const struct sockaddr_storage *to , socklen_t tolen,
  const struct sockaddr_storage *from, socklen_t fromlen,
  struct timeval timeout, size_t *answer_size)
{
 int sockfd;
 uint8_t *answer;

 sockfd = ldns_udp_bgsend_from(qbin, to, tolen, from, fromlen, timeout);

 if (sockfd == 0) {
  return LDNS_STATUS_SOCKET_ERROR;
 }


 if(!ldns_sock_wait(sockfd, timeout, 0)) {
  close_socket(sockfd);
  return LDNS_STATUS_NETWORK_ERR;
 }




        ldns_sock_nonblock(sockfd);

 answer = ldns_udp_read_wire(sockfd, answer_size, ((void*)0), ((void*)0));
 close_socket(sockfd);

 if (*answer_size == 0) {

  return LDNS_STATUS_NETWORK_ERR;
 }

 *result = answer;
 return LDNS_STATUS_OK;
}
