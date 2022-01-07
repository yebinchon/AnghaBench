
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;


 int UCL_EMIT_CONFIG ;
 int UCL_EMIT_JSON ;
 int UCL_EMIT_JSON_COMPACT ;
 int UCL_EMIT_YAML ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static inline enum ucl_emitter
lua_ucl_str_to_emit_type (const char *strtype)
{
 enum ucl_emitter format = UCL_EMIT_JSON_COMPACT;

 if (strcasecmp (strtype, "json") == 0) {
  format = UCL_EMIT_JSON;
 }
 else if (strcasecmp (strtype, "json-compact") == 0) {
  format = UCL_EMIT_JSON_COMPACT;
 }
 else if (strcasecmp (strtype, "yaml") == 0) {
  format = UCL_EMIT_YAML;
 }
 else if (strcasecmp (strtype, "config") == 0 ||
   strcasecmp (strtype, "ucl") == 0) {
  format = UCL_EMIT_CONFIG;
 }

 return format;
}
