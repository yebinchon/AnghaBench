
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;


 int UCL_PARSE_AUTO ;
 int UCL_PARSE_CSEXP ;
 int UCL_PARSE_MSGPACK ;
 int UCL_PARSE_UCL ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static inline enum ucl_parse_type
lua_ucl_str_to_parse_type (const char *str)
{
 enum ucl_parse_type type = UCL_PARSE_UCL;

 if (str != ((void*)0)) {
  if (strcasecmp (str, "msgpack") == 0) {
   type = UCL_PARSE_MSGPACK;
  }
  else if (strcasecmp (str, "sexp") == 0 ||
    strcasecmp (str, "csexp") == 0) {
   type = UCL_PARSE_CSEXP;
  }
  else if (strcasecmp (str, "auto") == 0) {
   type = UCL_PARSE_AUTO;
  }
 }

 return type;
}
