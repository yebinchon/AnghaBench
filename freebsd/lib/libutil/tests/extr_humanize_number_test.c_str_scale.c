
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HN_AUTOSCALE ;
 int HN_GETSCALE ;
 int MAX_INT_STR_DIGITS ;
 char* malloc (int ) ;
 int snprintf (char*,int ,char*,int) ;
 char* str_flags (int,char*) ;

__attribute__((used)) static char *
str_scale(int scale) {
 char *result;

 if (scale == HN_AUTOSCALE || scale == HN_GETSCALE)
  return str_flags(scale, "");

 result = malloc(MAX_INT_STR_DIGITS);
 result[0] = '\0';
 snprintf(result, MAX_INT_STR_DIGITS, "%d", scale);
 return result;
}
