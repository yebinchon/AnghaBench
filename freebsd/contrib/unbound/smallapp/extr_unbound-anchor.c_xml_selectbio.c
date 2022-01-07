
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_data {int * cdigest; int * cdigtype; int * calgo; int * ctag; } ;
typedef int BIO ;


 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static BIO*
xml_selectbio(struct xml_data* data, const char* tag)
{
 BIO* b = ((void*)0);
 if(strcasecmp(tag, "KeyTag") == 0)
  b = data->ctag;
 else if(strcasecmp(tag, "Algorithm") == 0)
  b = data->calgo;
 else if(strcasecmp(tag, "DigestType") == 0)
  b = data->cdigtype;
 else if(strcasecmp(tag, "Digest") == 0)
  b = data->cdigest;
 return b;
}
