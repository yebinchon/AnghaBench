
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;

int xml_next_tag(const char *in, const char **out,
   const char **out_tagname, const char **end)
{
 while (*in && *in != '<')
  in++;
 if (*in != '<')
  return 1;
 *out = ++in;
 if (*in == '/')
  in++;
 *out_tagname = in;
 while (isalnum(*in) || *in == '-')
  in++;
 if (*in == ':')
  *out_tagname = ++in;
 while (*in && *in != '>')
  in++;
 if (*in != '>')
  return 1;
 *end = ++in;
 return 0;
}
