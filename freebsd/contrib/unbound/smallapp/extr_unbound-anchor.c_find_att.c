
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Char ;


 scalar_t__ strcasecmp (int const*,int const*) ;

__attribute__((used)) static const XML_Char*
find_att(const XML_Char **atts, const XML_Char* name)
{
 int i;
 for(i=0; atts[i]; i+=2) {
  if(strcasecmp(atts[i], name) == 0)
   return atts[i+1];
 }
 return ((void*)0);
}
