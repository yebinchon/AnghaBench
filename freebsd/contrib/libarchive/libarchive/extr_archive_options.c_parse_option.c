
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *
parse_option(const char **s, const char **m, const char **o, const char **v)
{
 const char *end, *mod, *opt, *val;
 char *p;

 end = ((void*)0);
 mod = ((void*)0);
 opt = *s;
 val = "1";

 p = strchr(opt, ',');

 if (p != ((void*)0)) {
  *p = '\0';
  end = ((const char *)p) + 1;
 }

 if (0 == strlen(opt)) {
  *s = end;
  *m = ((void*)0);
  *o = ((void*)0);
  *v = ((void*)0);
  return end;
 }

 p = strchr(opt, ':');
 if (p != ((void*)0)) {
  *p = '\0';
  mod = opt;
  opt = ++p;
 }

 p = strchr(opt, '=');
 if (p != ((void*)0)) {
  *p = '\0';
  val = ++p;
 } else if (opt[0] == '!') {
  ++opt;
  val = ((void*)0);
 }

 *s = end;
 *m = mod;
 *o = opt;
 *v = val;

 return end;
}
