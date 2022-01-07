
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int ldns_buffer ;


 int LDNS_FREE (int) ;
 int LDNS_XMALLOC (int,int) ;
 int ldns_buffer_begin (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_write_uint16 (int,int) ;
 int memcpy (int,int ,int) ;
 int sendbuf ;
 int sendto (int,void*,int,int ,struct sockaddr*,int ) ;
 int uint8_t ;

ssize_t
ldns_tcp_send_query(ldns_buffer *qbin, int sockfd,
                    const struct sockaddr_storage *to, socklen_t tolen)
{
 uint8_t *sendbuf;
 ssize_t bytes;


 sendbuf = LDNS_XMALLOC(uint8_t, ldns_buffer_position(qbin) + 2);
 if(!sendbuf) return 0;
 ldns_write_uint16(sendbuf, ldns_buffer_position(qbin));
 memcpy(sendbuf + 2, ldns_buffer_begin(qbin), ldns_buffer_position(qbin));

 bytes = sendto(sockfd, (void*)sendbuf,
   ldns_buffer_position(qbin) + 2, 0, (struct sockaddr *)to, tolen);

        LDNS_FREE(sendbuf);

 if (bytes == -1 || (size_t) bytes != ldns_buffer_position(qbin) + 2 ) {
  return 0;
 }
 return bytes;
}
