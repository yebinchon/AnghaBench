
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


 int ldns_tcp_send_from (int **,int *,struct sockaddr_storage const*,int ,int *,int ,struct timeval,size_t*) ;

ldns_status
ldns_tcp_send(uint8_t **result, ldns_buffer *qbin,
  const struct sockaddr_storage *to, socklen_t tolen,
  struct timeval timeout, size_t *answer_size)
{
 return ldns_tcp_send_from(result, qbin,
   to, tolen, ((void*)0), 0, timeout, answer_size);
}
