
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int mad_field_name (int) ;
 int strlen (int ) ;
 int strncpy (char*,int ,size_t) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int vsnprint_field(char *buf, size_t n, enum MAD_FIELDS f, int spacing,
     const char *format, va_list va_args)
{
 int len, i, ret;

 len = strlen(mad_field_name(f));
 if (len + 2 > n || spacing + 1 > n)
  return 0;

 strncpy(buf, mad_field_name(f), n);
 buf[len] = ':';
 for (i = len+1; i < spacing+1; i++) {
  buf[i] = '.';
 }

 ret = vsnprintf(&buf[spacing+1], n - spacing, format, va_args);
 if (ret >= n - spacing)
  buf[n] = '\0';

 return ret + spacing;
}
