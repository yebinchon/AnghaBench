
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct tcp_req_info {TYPE_1__* cp; } ;
struct TYPE_2__ {scalar_t__ tcp_is_reading; int buffer; } ;


 int sldns_buffer_clear (int ) ;
 int sldns_buffer_flip (int ) ;
 int sldns_buffer_write (int ,int *,size_t) ;

__attribute__((used)) static void
tcp_req_info_start_write_buf(struct tcp_req_info* req, uint8_t* buf,
 size_t len)
{
 sldns_buffer_clear(req->cp->buffer);
 sldns_buffer_write(req->cp->buffer, buf, len);
 sldns_buffer_flip(req->cp->buffer);

 req->cp->tcp_is_reading = 0;
}
