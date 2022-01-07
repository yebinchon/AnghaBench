
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr_type ;
struct TYPE_3__ {char* _name; int _type; } ;
typedef TYPE_1__ ldns_rr_descriptor ;


 scalar_t__ LDNS_RDATA_FIELD_DESCRIPTORS_COUNT ;
 int atoi (char const*) ;
 TYPE_1__* rdata_field_descriptors ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

ldns_rr_type
ldns_get_rr_type_by_name(const char *name)
{
 unsigned int i;
 const char *desc_name;
 const ldns_rr_descriptor *desc;


 if (strlen(name) > 4 && strncasecmp(name, "TYPE", 4) == 0) {
  return atoi(name + 4);
 }


 for (i = 0; i < (unsigned int) LDNS_RDATA_FIELD_DESCRIPTORS_COUNT; i++) {
  desc = &rdata_field_descriptors[i];
  desc_name = desc->_name;
  if(desc_name &&
     strlen(name) == strlen(desc_name) &&
     strncasecmp(name, desc_name, strlen(desc_name)) == 0) {

   return desc->_type;
  }
 }


 if (strlen(name) == 4 && strncasecmp(name, "IXFR", 4) == 0) {
  return 251;
 } else if (strlen(name) == 4 && strncasecmp(name, "AXFR", 4) == 0) {
  return 252;
 } else if (strlen(name) == 5 && strncasecmp(name, "MAILB", 5) == 0) {
  return 253;
 } else if (strlen(name) == 5 && strncasecmp(name, "MAILA", 5) == 0) {
  return 254;
 } else if (strlen(name) == 3 && strncasecmp(name, "ANY", 3) == 0) {
  return 255;
 }

 return 0;
}
