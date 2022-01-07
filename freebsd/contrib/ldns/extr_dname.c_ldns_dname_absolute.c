
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int LDNS_FREE (char*) ;
 int ldns_dname_str_absolute (char*) ;
 char* ldns_rdf2str (int const*) ;

bool
ldns_dname_absolute(const ldns_rdf *rdf)
{
 char *str = ldns_rdf2str(rdf);
 if (str) {
  bool r = ldns_dname_str_absolute(str);
  LDNS_FREE(str);
  return r;
 }
 return 0;
}
