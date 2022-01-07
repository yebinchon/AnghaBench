
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 scalar_t__ BIO_get_mem_data (int *,char**) ;
 int * do_chunked_read (int *) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int printf (char*,...) ;
 int verb ;

__attribute__((used)) static char*
read_chunked_zero_terminate(SSL* ssl, size_t* len)
{

 BIO* tmp = do_chunked_read(ssl);
 char* data, *d = ((void*)0);
 size_t l;
 if(!tmp) {
  if(verb) printf("could not read from https\n");
  return ((void*)0);
 }
 l = (size_t)BIO_get_mem_data(tmp, &d);
 if(verb>=2) printf("chunked data is %d\n", (int)l);
 if(l == 0 || d == ((void*)0)) {
  if(verb) printf("out of memory\n");
  return ((void*)0);
 }
 *len = l-1;
 data = (char*)malloc(l);
 if(data == ((void*)0)) {
  if(verb) printf("out of memory\n");
  return ((void*)0);
 }
 memcpy(data, d, l);
 BIO_free(tmp);
 return data;
}
