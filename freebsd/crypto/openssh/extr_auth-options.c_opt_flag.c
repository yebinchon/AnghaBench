
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
opt_flag(const char *opt, int allow_negate, const char **optsp)
{
 size_t opt_len = strlen(opt);
 const char *opts = *optsp;
 int negate = 0;

 if (allow_negate && strncasecmp(opts, "no-", 3) == 0) {
  opts += 3;
  negate = 1;
 }
 if (strncasecmp(opts, opt, opt_len) == 0) {
  *optsp = opts + opt_len;
  return negate ? 0 : 1;
 }
 return -1;
}
