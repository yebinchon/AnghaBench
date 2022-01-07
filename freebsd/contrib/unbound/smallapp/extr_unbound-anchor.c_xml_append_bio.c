
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 long BIO_get_mem_data (int *,char**) ;
 int BIO_seek (int *,int ) ;
 scalar_t__ BIO_write (int *,char*,long) ;
 int exit (int ) ;
 int printf (char*) ;
 scalar_t__ verb ;

__attribute__((used)) static void
xml_append_bio(BIO* b, BIO* a)
{
 char* z = ((void*)0);
 long i, len;
 (void)BIO_seek(a, 0);
 len = BIO_get_mem_data(a, &z);
 if(!len || !z) {
  if(verb) printf("out of memory in BIO_write\n");
  exit(0);
 }

 for(i=0; i<len; i++) {
  if(z[i] == '\r' || z[i] == '\n')
   z[i] = ' ';
 }

 if(BIO_write(b, z, len) < 0) {
  if(verb) printf("out of memory in BIO_write\n");
  exit(0);
 }
}
