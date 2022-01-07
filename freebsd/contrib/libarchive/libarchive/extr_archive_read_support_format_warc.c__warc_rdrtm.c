
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int _key ;


 char* _warc_find_eol (char const*,int) ;
 char* xmemmem (char const*,size_t,char const*,int) ;
 int xstrpisotime (char const*,char**) ;

__attribute__((used)) static time_t
_warc_rdrtm(const char *buf, size_t bsz)
{
 static const char _key[] = "\r\nWARC-Date:";
 const char *val, *eol;
 char *on = ((void*)0);
 time_t res;

 if ((val = xmemmem(buf, bsz, _key, sizeof(_key) - 1U)) == ((void*)0)) {

  return (time_t)-1;
 }
 val += sizeof(_key) - 1U;
 if ((eol = _warc_find_eol(val, buf + bsz - val)) == ((void*)0) ) {

  return -1;
 }


 res = xstrpisotime(val, &on);
 if (on != eol) {

  return -1;
 }
 return res;
}
