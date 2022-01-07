
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LDNS_RR_CLASS_IN ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int sldns_get_rr_class_by_name (char const*) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
massage_class(const char* c)
{
 if(c) {
  int r = sldns_get_rr_class_by_name(c);
  if(r == 0 && strcasecmp(c, "CLASS0") != 0 &&
   strcmp(c, "") != 0) {
   fprintf(stderr, "error unknown class %s\n", c);
   exit(1);
  }
  return r;
 }
 return LDNS_RR_CLASS_IN;
}
