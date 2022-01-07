
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int name; struct eap_method* next; } ;


 struct eap_method* eap_methods ;
 int os_snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;

size_t eap_get_names(char *buf, size_t buflen)
{
 char *pos, *end;
 struct eap_method *m;
 int ret;

 if (buflen == 0)
  return 0;

 pos = buf;
 end = pos + buflen;

 for (m = eap_methods; m; m = m->next) {
  ret = os_snprintf(pos, end - pos, "%s%s",
      m == eap_methods ? "" : " ", m->name);
  if (os_snprintf_error(end - pos, ret))
   break;
  pos += ret;
 }
 buf[buflen - 1] = '\0';

 return pos - buf;
}
