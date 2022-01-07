
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {struct edns_option* next; int opt_len; int opt_data; int opt_code; } ;
typedef int str ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int sldns_wire2str_edns_option_print (char**,size_t*,int ,int ,int ) ;
 int verbose (int,char*,char const*) ;
 int verbosity ;

void
log_edns_opt_list(enum verbosity_value level, const char* info_str,
 struct edns_option* list)
{
 if(verbosity >= level && list) {
  char str[128], *s;
  size_t slen;
  verbose(level, "%s", info_str);
  while(list) {
   s = str;
   slen = sizeof(str);
   (void)sldns_wire2str_edns_option_print(&s, &slen, list->opt_code,
    list->opt_data, list->opt_len);
   verbose(level, "  %s", str);
   list = list->next;
  }
 }
}
