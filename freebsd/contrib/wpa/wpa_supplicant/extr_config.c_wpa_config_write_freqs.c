
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_data {int dummy; } ;


 int os_snprintf (char*,int,char*,char*,int const) ;
 scalar_t__ os_snprintf_error (int,int) ;
 char* os_zalloc (int) ;

__attribute__((used)) static char * wpa_config_write_freqs(const struct parse_data *data,
         const int *freqs)
{
 char *buf, *pos, *end;
 int i, ret;
 size_t count;

 if (freqs == ((void*)0))
  return ((void*)0);

 count = 0;
 for (i = 0; freqs[i]; i++)
  count++;

 pos = buf = os_zalloc(10 * count + 1);
 if (buf == ((void*)0))
  return ((void*)0);
 end = buf + 10 * count + 1;

 for (i = 0; freqs[i]; i++) {
  ret = os_snprintf(pos, end - pos, "%s%u",
      i == 0 ? "" : " ", freqs[i]);
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }

 return buf;
}
