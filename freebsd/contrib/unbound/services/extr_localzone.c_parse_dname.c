
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dname_count_size_labels (int *,size_t*) ;
 int log_err (char*,char const*) ;
 int * sldns_str2wire_dname (char const*,size_t*) ;

int
parse_dname(const char* str, uint8_t** res, size_t* len, int* labs)
{
 *res = sldns_str2wire_dname(str, len);
 *labs = 0;
 if(!*res) {
  log_err("cannot parse name %s", str);
  return 0;
 }
 *labs = dname_count_size_labels(*res, len);
 return 1;
}
