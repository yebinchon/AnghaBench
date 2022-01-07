
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 scalar_t__ BIO_write (int *,char*,int) ;
 int free (char*) ;
 int parse_chunk_header (char*,size_t*) ;
 int printf (char*,...) ;
 char* read_data_chunk (int *,size_t) ;
 scalar_t__ read_ssl_line (int *,char*,int) ;
 scalar_t__ strlen (char*) ;
 int verb ;

__attribute__((used)) static BIO*
do_chunked_read(SSL* ssl)
{
 char buf[1024];
 size_t len;
 char* body;
 BIO* mem = BIO_new(BIO_s_mem());
 if(verb>=3) printf("do_chunked_read\n");
 if(!mem) {
  if(verb) printf("out of memory\n");
  return ((void*)0);
 }
 while(read_ssl_line(ssl, buf, sizeof(buf))) {

  if(verb>=2) printf("chunk header: %s\n", buf);
  if(!parse_chunk_header(buf, &len)) {
   BIO_free(mem);
   if(verb>=3) printf("could not parse chunk header\n");
   return ((void*)0);
  }
  if(verb>=2) printf("chunk len: %d\n", (int)len);

  if(len == 0) {
   char z = 0;


   do {
    if(!read_ssl_line(ssl, buf, sizeof(buf))) {
     BIO_free(mem);
     return ((void*)0);
    }
   } while (strlen(buf) > 0);

   if(BIO_write(mem, &z, 1) <= 0) {
    if(verb) printf("out of memory\n");
    BIO_free(mem);
    return ((void*)0);
   }
   return mem;
  }

  body = read_data_chunk(ssl, len);
  if(!body) {
   BIO_free(mem);
   return ((void*)0);
  }
  if(BIO_write(mem, body, (int)len) <= 0) {
   if(verb) printf("out of memory\n");
   free(body);
   BIO_free(mem);
   return ((void*)0);
  }
  free(body);

  if(!read_ssl_line(ssl, buf, sizeof(buf))) {
   BIO_free(mem);
   return ((void*)0);
  }
 }
 BIO_free(mem);
 return ((void*)0);
}
