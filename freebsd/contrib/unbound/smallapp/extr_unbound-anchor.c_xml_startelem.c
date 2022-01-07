
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_data {int tag; int use_key; int * czone; } ;
typedef char XML_Char ;
typedef int BIO ;


 int BIO_reset (int *) ;
 int exit (int ) ;
 int free (int ) ;
 int handle_keydigest (struct xml_data*,char const**) ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strdup (char const*) ;
 int verb ;
 int * xml_selectbio (struct xml_data*,int ) ;

__attribute__((used)) static void
xml_startelem(void *userData, const XML_Char *name, const XML_Char **atts)
{
 struct xml_data* data = (struct xml_data*)userData;
 BIO* b;
 if(verb>=4) printf("xml tag start '%s'\n", name);
 free(data->tag);
 data->tag = strdup(name);
 if(!data->tag) {
  if(verb) printf("out of memory\n");
  exit(0);
 }
 if(verb>=4) {
  int i;
  for(i=0; atts[i]; i+=2) {
   printf("  %s='%s'\n", atts[i], atts[i+1]);
  }
 }

 if(strcasecmp(name, "KeyDigest") == 0) {
  handle_keydigest(data, atts);
  return;
 } else if(strcasecmp(name, "Zone") == 0) {
  (void)BIO_reset(data->czone);
  return;
 }


 if(!data->use_key)
  return;
 b = xml_selectbio(data, data->tag);
 if(b) {

  (void)BIO_reset(b);
 }
}
