
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (int *,int) ;
 int SSL_read (int *,char*,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int printf (char*,...) ;
 int verb ;

__attribute__((used)) static char*
read_data_chunk(SSL* ssl, size_t len)
{
 size_t got = 0;
 int r;
 char* data;
 if(len >= 0xfffffff0)
  return ((void*)0);
 data = malloc(len+1);
 if(!data) {
  if(verb) printf("out of memory\n");
  return ((void*)0);
 }
 while(got < len) {
  if((r = SSL_read(ssl, data+got, (int)(len-got))) <= 0) {
   if(SSL_get_error(ssl, r) == SSL_ERROR_ZERO_RETURN) {

    if(verb) printf("could not SSL_read: unexpected EOF\n");
    free(data);
    return ((void*)0);
   }
   if(verb) printf("could not SSL_read\n");
   free(data);
   return ((void*)0);
  }
  if(verb >= 2) printf("at %d/%d\n", (int)got, (int)len);
  got += r;
 }
 if(verb>=2) printf("read %d data\n", (int)len);
 data[len] = 0;
 return data;
}
