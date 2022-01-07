
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int member_0; char const* str; int len; int * member_1; } ;
typedef TYPE_1__ warc_string_t ;
typedef int _key ;


 char* _warc_find_eol (char const*,int) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ memcmp (char const*,char*,unsigned int) ;
 char* xmemmem (char const*,int,char const*,unsigned int) ;

__attribute__((used)) static warc_string_t
_warc_rduri(const char *buf, size_t bsz)
{
 static const char _key[] = "\r\nWARC-Target-URI:";
 const char *val, *uri, *eol, *p;
 warc_string_t res = {0U, ((void*)0)};

 if ((val = xmemmem(buf, bsz, _key, sizeof(_key) - 1U)) == ((void*)0)) {

  return res;
 }

 val += sizeof(_key) - 1U;
 if ((eol = _warc_find_eol(val, buf + bsz - val)) == ((void*)0)) {

  return res;
 }

 while (val < eol && (*val == ' ' || *val == '\t'))
  ++val;


 if ((uri = xmemmem(val, eol - val, "://", 3U)) == ((void*)0)) {

  return res;
 }


 for (p = val; p < eol; p++) {
  if (isspace((unsigned char)*p))
   return res;
 }


 if (uri < (val + 3U))
  return res;


 uri += 3U;


 if (memcmp(val, "file", 4U) == 0) {


 } else if (memcmp(val, "http", 4U) == 0 ||
     memcmp(val, "ftp", 3U) == 0) {

  while (uri < eol && *uri++ != '/');
 } else {

  return res;
 }
 res.str = uri;
 res.len = eol - uri;
 return res;
}
