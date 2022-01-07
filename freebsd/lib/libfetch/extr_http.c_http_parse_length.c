
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DEBUGF (char*,long long) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int
http_parse_length(const char *p, off_t *length)
{
 off_t len;

 for (len = 0; *p && isdigit((unsigned char)*p); ++p)
  len = len * 10 + (*p - '0');
 if (*p)
  return (-1);
 DEBUGF("content length: [%lld]\n", (long long)len);
 *length = len;
 return (0);
}
