
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRDE_BADCHAR ;
 int WRDE_SYNTAX ;

__attribute__((used)) static int
we_check(const char *words)
{
 char c;

 bool quote = 0, dollar = 0;

 bool have_sq = 0, have_dq = 0, have_par_begin = 0;
 bool have_cmd = 0;

 bool need_sq = 0, need_dq = 0, need_par_end = 0;
 bool need_cmd_old = 0, need_cmd_new = 0;

 while ((c = *words++) != '\0') {
  switch (c) {
  case '\\':
   quote = !quote;
   continue;
  case '$':
   if (quote)
    quote = 0;
   else
    dollar = !dollar;
   continue;
  case '\'':
   if (!quote && !have_sq && !have_dq)
    need_sq = 1;
   else
    need_sq = 0;
   have_sq = 1;
   break;
  case '"':
   if (!quote && !have_sq && !have_dq)
    need_dq = 1;
   else
    need_dq = 0;
   have_dq = 1;
   break;
  case '`':
   if (!quote && !have_sq && !have_cmd)
    need_cmd_old = 1;
   else
    need_cmd_old = 0;
   have_cmd = 1;
   break;
  case '{':
   if (!quote && !dollar && !have_sq && !have_dq &&
       !have_cmd)
    return (WRDE_BADCHAR);
   if (dollar) {
    if (!quote && !have_sq)
     need_par_end = 1;
    have_par_begin = 1;
   }
   break;
  case '}':
   if (!quote && !have_sq && !have_dq && !have_par_begin &&
       !have_cmd)
    return (WRDE_BADCHAR);
   need_par_end = 0;
   break;
  case '(':
   if (!quote && !dollar && !have_sq && !have_dq &&
       !have_cmd)
    return (WRDE_BADCHAR);
   if (dollar) {
    if (!quote && !have_sq)
     need_cmd_new = 1;
    have_cmd = 1;
   }
   break;
  case ')':
   if (!quote && !have_sq && !have_dq && !have_cmd)
    return (WRDE_BADCHAR);
   need_cmd_new = 0;
   break;
  case '|': case '&': case ';': case '<': case '>': case '\n':
   if (!quote && !have_sq && !have_dq && !have_cmd)
    return (WRDE_BADCHAR);
   break;
  default:
   break;
  }
  quote = dollar = 0;
 }
 if (quote || dollar || need_sq || need_dq || need_par_end ||
     need_cmd_old || need_cmd_new)
  return (WRDE_SYNTAX);

 return (0);
}
