
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int ldns_buffer ;


 scalar_t__ ldns_buffer_begin (int *) ;
 size_t ldns_buffer_position (int *) ;
 int sendto (int,void*,size_t,int ,struct sockaddr*,int ) ;

ssize_t
ldns_udp_send_query(ldns_buffer *qbin, int sockfd, const struct sockaddr_storage *to,
  socklen_t tolen)
{
 ssize_t bytes;

 bytes = sendto(sockfd, (void*)ldns_buffer_begin(qbin),
   ldns_buffer_position(qbin), 0, (struct sockaddr *)to, tolen);

 if (bytes == -1 || (size_t)bytes != ldns_buffer_position(qbin)) {
  return 0;
 }
 if ((size_t) bytes != ldns_buffer_position(qbin)) {
  return 0;
 }
 return bytes;
}
