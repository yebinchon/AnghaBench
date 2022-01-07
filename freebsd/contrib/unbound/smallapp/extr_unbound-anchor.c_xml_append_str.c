
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_write (int *,char const*,int) ;
 int exit (int ) ;
 int printf (char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ verb ;

__attribute__((used)) static void
xml_append_str(BIO* b, const char* s)
{
 if(BIO_write(b, s, (int)strlen(s)) < 0) {
  if(verb) printf("out of memory in BIO_write\n");
  exit(0);
 }
}
