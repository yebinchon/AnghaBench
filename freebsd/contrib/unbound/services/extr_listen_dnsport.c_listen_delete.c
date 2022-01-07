
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_dnsport {scalar_t__ dnscrypt_udp_buff; scalar_t__ udp_buff; int cps; } ;


 int free (struct listen_dnsport*) ;
 int listen_list_delete (int ) ;
 int lock_basic_destroy (int *) ;
 int sldns_buffer_free (scalar_t__) ;
 int stream_wait_count_lock ;
 scalar_t__ stream_wait_lock_inited ;

void
listen_delete(struct listen_dnsport* front)
{
 if(!front)
  return;
 listen_list_delete(front->cps);






 sldns_buffer_free(front->udp_buff);
 free(front);
 if(stream_wait_lock_inited) {
  stream_wait_lock_inited = 0;
  lock_basic_destroy(&stream_wait_count_lock);
 }
}
