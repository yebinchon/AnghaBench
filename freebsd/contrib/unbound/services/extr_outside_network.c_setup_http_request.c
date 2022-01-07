
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 int PACKAGE_VERSION ;
 scalar_t__ sldns_buffer_capacity (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 scalar_t__ sldns_buffer_position (int *) ;
 int sldns_buffer_printf (int *,char*,...) ;

__attribute__((used)) static int
setup_http_request(sldns_buffer* buf, char* host, char* path)
{
 sldns_buffer_clear(buf);
 sldns_buffer_printf(buf, "GET /%s HTTP/1.1\r\n", path);
 sldns_buffer_printf(buf, "Host: %s\r\n", host);
 sldns_buffer_printf(buf, "User-Agent: unbound/%s\r\n",
  PACKAGE_VERSION);



 sldns_buffer_printf(buf, "\r\n");
 if(sldns_buffer_position(buf)+10 > sldns_buffer_capacity(buf))
  return 0;

 sldns_buffer_flip(buf);
 return 1;
}
