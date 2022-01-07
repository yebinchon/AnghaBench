
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int _key ;


 char* _warc_find_eol (char const*,int) ;
 scalar_t__ errno ;
 int isdigit (unsigned char) ;
 long strtol (char const*,char**,int) ;
 char* xmemmem (char const*,size_t,char const*,int) ;

__attribute__((used)) static ssize_t
_warc_rdlen(const char *buf, size_t bsz)
{
 static const char _key[] = "\r\nContent-Length:";
 const char *val, *eol;
 char *on = ((void*)0);
 long int len;

 if ((val = xmemmem(buf, bsz, _key, sizeof(_key) - 1U)) == ((void*)0)) {

  return -1;
 }
 val += sizeof(_key) - 1U;
 if ((eol = _warc_find_eol(val, buf + bsz - val)) == ((void*)0)) {

  return -1;
 }


 while (val < eol && (*val == ' ' || *val == '\t'))
  val++;

 if (!isdigit((unsigned char)*val))
  return -1;
 errno = 0;
 len = strtol(val, &on, 10);
 if (errno != 0 || on != eol) {

  return -1;
 }

 return (size_t)len;
}
