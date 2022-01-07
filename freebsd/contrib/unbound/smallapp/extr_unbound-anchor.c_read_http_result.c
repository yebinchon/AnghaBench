
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_write (int *,char*,int) ;
 int exit (int ) ;
 int free (char*) ;
 int print_data (char*,char*,int) ;
 int printf (char*) ;
 char* read_chunked_zero_terminate (int *,size_t*) ;
 char* read_data_chunk (int *,size_t) ;
 int read_http_headers (int *,size_t*) ;
 int verb ;

__attribute__((used)) static BIO*
read_http_result(SSL* ssl)
{
 size_t len = 0;
 char* data;
 BIO* m;
 if(!read_http_headers(ssl, &len)) {
  return ((void*)0);
 }
 if(len == 0) {
  data = read_chunked_zero_terminate(ssl, &len);
 } else {
  data = read_data_chunk(ssl, len);
 }
 if(!data) return ((void*)0);
 if(verb >= 4) print_data("read data", data, (int)len);
 m = BIO_new(BIO_s_mem());
 if(!m) {
  if(verb) printf("out of memory\n");
  free(data);
  exit(0);
 }
 BIO_write(m, data, (int)len);
 free(data);
 return m;
}
