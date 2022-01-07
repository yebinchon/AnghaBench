
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_data {int czone; scalar_t__ use_key; int * tag; } ;
typedef char XML_Char ;


 int exit (int ) ;
 int free (int *) ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int verb ;
 int xml_append_ds (struct xml_data*) ;
 int xml_is_zone_name (int ,char*) ;

__attribute__((used)) static void
xml_endelem(void *userData, const XML_Char *name)
{
 struct xml_data* data = (struct xml_data*)userData;
 if(verb>=4) printf("xml tag end   '%s'\n", name);
 free(data->tag);
 data->tag = ((void*)0);
 if(strcasecmp(name, "KeyDigest") == 0) {
  if(data->use_key)
   xml_append_ds(data);
  data->use_key = 0;
 } else if(strcasecmp(name, "Zone") == 0) {
  if(!xml_is_zone_name(data->czone, ".")) {
   if(verb) printf("xml not for the right zone\n");
   exit(0);
  }
 }
}
