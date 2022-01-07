
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;
typedef int RES ;


 scalar_t__ sldns_buffer_begin (int *) ;
 int ssl_read_buf (int *,int *) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
read_fixed(RES* ssl, sldns_buffer* buf, const char* str)
{
 if(!ssl_read_buf(ssl, buf)) return 0;
 return (strcmp((char*)sldns_buffer_begin(buf), str) == 0);
}
