
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int end; int start; } ;
typedef TYPE_1__ jsmntok_t ;


 scalar_t__ JSMN_STRING ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int jsoneq(const char *json, jsmntok_t *tok, const char *s) {
 if (tok->type == JSMN_STRING && (int) strlen(s) == tok->end - tok->start &&
   strncmp(json + tok->start, s, tok->end - tok->start) == 0) {
  return 0;
 }
 return -1;
}
