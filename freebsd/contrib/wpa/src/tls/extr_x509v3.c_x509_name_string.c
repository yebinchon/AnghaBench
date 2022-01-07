
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_name {size_t num_attr; int email; TYPE_1__* attr; } ;
struct TYPE_2__ {int value; int type; } ;


 int os_snprintf (char*,int,char*,int ,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int x509_name_attr_str (int ) ;

void x509_name_string(struct x509_name *name, char *buf, size_t len)
{
 char *pos, *end;
 int ret;
 size_t i;

 if (len == 0)
  return;

 pos = buf;
 end = buf + len;

 for (i = 0; i < name->num_attr; i++) {
  ret = os_snprintf(pos, end - pos, "%s=%s, ",
      x509_name_attr_str(name->attr[i].type),
      name->attr[i].value);
  if (os_snprintf_error(end - pos, ret))
   goto done;
  pos += ret;
 }

 if (pos > buf + 1 && pos[-1] == ' ' && pos[-2] == ',') {
  pos--;
  *pos = '\0';
  pos--;
  *pos = '\0';
 }

 if (name->email) {
  ret = os_snprintf(pos, end - pos, "/emailAddress=%s",
      name->email);
  if (os_snprintf_error(end - pos, ret))
   goto done;
  pos += ret;
 }

done:
 if (pos < end)
  *pos = '\0';
 end[-1] = '\0';
}
