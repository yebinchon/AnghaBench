
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_data {char* tag; scalar_t__ use_key; int * czone; } ;
typedef int XML_Char ;
typedef int BIO ;


 scalar_t__ BIO_write (int *,int const*,int) ;
 int exit (int ) ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int verb ;
 int * xml_selectbio (struct xml_data*,char*) ;

__attribute__((used)) static void
xml_charhandle(void *userData, const XML_Char *s, int len)
{
 struct xml_data* data = (struct xml_data*)userData;
 BIO* b = ((void*)0);

 if(!data->tag)
  return;
 if(verb>=4) {
  int i;
  printf("%s%s charhandle: '",
   data->use_key?"use ":"",
   data->tag?data->tag:"none");
  for(i=0; i<len; i++)
   printf("%c", s[i]);
  printf("'\n");
 }
 if(strcasecmp(data->tag, "Zone") == 0) {
  if(BIO_write(data->czone, s, len) < 0) {
   if(verb) printf("out of memory in BIO_write\n");
   exit(0);
  }
  return;
 }

 if(!data->use_key)
  return;
 b = xml_selectbio(data, data->tag);
 if(b) {
  if(BIO_write(b, s, len) < 0) {
   if(verb) printf("out of memory in BIO_write\n");
   exit(0);
  }
 }
}
