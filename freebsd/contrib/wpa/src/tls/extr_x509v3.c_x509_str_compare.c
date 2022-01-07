
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 int os_strcasecmp (char const*,char const*) ;
 char* os_strdup (char const*) ;
 int x509_str_strip_whitespace (char*) ;

__attribute__((used)) static int x509_str_compare(const char *a, const char *b)
{
 char *aa, *bb;
 int ret;

 if (!a && b)
  return -1;
 if (a && !b)
  return 1;
 if (!a && !b)
  return 0;

 aa = os_strdup(a);
 bb = os_strdup(b);

 if (aa == ((void*)0) || bb == ((void*)0)) {
  os_free(aa);
  os_free(bb);
  return os_strcasecmp(a, b);
 }

 x509_str_strip_whitespace(aa);
 x509_str_strip_whitespace(bb);

 ret = os_strcasecmp(aa, bb);

 os_free(aa);
 os_free(bb);

 return ret;
}
