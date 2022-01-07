
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROMPT_MAX ;
 int dprompt ;
 int snprintf (char*,int ,char*,char*,char const*,int ,char const*) ;
 scalar_t__ use_color ;

int
dprompt_sprint(char * restrict str, const char *prefix, const char *append)
{

 return (snprintf(str, PROMPT_MAX, "%s%s%s%s", use_color ? "\\Zn" : "",
     prefix ? prefix : "", dprompt, append ? append : ""));
}
