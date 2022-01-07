
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;
typedef int RES ;


 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_capacity (int *) ;
 int ssl_read_line (int *,char*,int ) ;

__attribute__((used)) static int
ssl_read_buf(RES* ssl, sldns_buffer* buf)
{
 return ssl_read_line(ssl, (char*)sldns_buffer_begin(buf),
  sldns_buffer_capacity(buf));
}
