
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_parse_escape (int *,char const**) ;

int
sldns_parse_char(uint8_t *ch_p, const char** str_p)
{
 switch (**str_p) {

 case '\0': return 0;

 case '\\': *str_p += 1;
   return sldns_parse_escape(ch_p, str_p);

 default: *ch_p = (uint8_t)*(*str_p)++;
   return 1;
 }
}
