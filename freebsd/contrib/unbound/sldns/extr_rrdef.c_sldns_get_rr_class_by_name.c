
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sldns_rr_class ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ sldns_lookup_table ;


 int atoi (char const*) ;
 TYPE_1__* sldns_lookup_by_name (int ,char const*) ;
 int sldns_rr_classes ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

sldns_rr_class
sldns_get_rr_class_by_name(const char *name)
{
 sldns_lookup_table *lt;


 if (strlen(name) > 5 && strncasecmp(name, "CLASS", 5) == 0) {
  return atoi(name + 5);
 }


 lt = sldns_lookup_by_name(sldns_rr_classes, name);
 if (lt) {
  return lt->id;
 }
 return 0;
}
