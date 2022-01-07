
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
opt_dequote(const char **sp, const char **errstrp)
{
 const char *s = *sp;
 char *ret;
 size_t i;

 *errstrp = ((void*)0);
 if (*s != '"') {
  *errstrp = "missing start quote";
  return ((void*)0);
 }
 s++;
 if ((ret = malloc(strlen((s)) + 1)) == ((void*)0)) {
  *errstrp = "memory allocation failed";
  return ((void*)0);
 }
 for (i = 0; *s != '\0' && *s != '"';) {
  if (s[0] == '\\' && s[1] == '"')
   s++;
  ret[i++] = *s++;
 }
 if (*s == '\0') {
  *errstrp = "missing end quote";
  free(ret);
  return ((void*)0);
 }
 ret[i] = '\0';
 s++;
 *sp = s;
 return ret;
}
