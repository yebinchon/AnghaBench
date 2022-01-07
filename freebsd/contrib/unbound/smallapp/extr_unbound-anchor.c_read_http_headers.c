
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL ;


 int process_one_header (char*,size_t*,int*) ;
 scalar_t__ read_ssl_line (int *,char*,int) ;

__attribute__((used)) static size_t
read_http_headers(SSL* ssl, size_t* clen)
{
 char buf[1024];
 int chunked = 0;
 *clen = 0;
 while(read_ssl_line(ssl, buf, sizeof(buf))) {
  if(buf[0] == 0)
   return 1;
  if(!process_one_header(buf, clen, &chunked))
   return 0;
 }
 return 0;
}
