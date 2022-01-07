
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arg_type ;





 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static void
arg_suffix(char *buf, size_t len, arg_type at)
{
 switch (at) {
 case 130:
  break;
 case 128:
  strlcat(buf, "=<STRING>", len);
  break;
 case 129:
  strlcat(buf, "=<FILE>", len);
  break;
 default:
  strlcat(buf, "=<NUM>", len);
  break;
 }
}
