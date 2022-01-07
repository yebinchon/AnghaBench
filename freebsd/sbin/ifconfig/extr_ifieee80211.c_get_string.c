
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;
typedef int u_char ;


 int isxdigit (int ) ;
 int memset (char*,int ,int) ;
 int * strchr (char const*,char const) ;
 int tohex (int ) ;
 char tolower (int ) ;
 int warnx (char*) ;

__attribute__((used)) static const char *
get_string(const char *val, const char *sep, u_int8_t *buf, int *lenp)
{
 int len;
 int hexstr;
 u_int8_t *p;

 len = *lenp;
 p = buf;
 hexstr = (val[0] == '0' && tolower((u_char)val[1]) == 'x');
 if (hexstr)
  val += 2;
 for (;;) {
  if (*val == '\0')
   break;
  if (sep != ((void*)0) && strchr(sep, *val) != ((void*)0)) {
   val++;
   break;
  }
  if (hexstr) {
   if (!isxdigit((u_char)val[0])) {
    warnx("bad hexadecimal digits");
    return ((void*)0);
   }
   if (!isxdigit((u_char)val[1])) {
    warnx("odd count hexadecimal digits");
    return ((void*)0);
   }
  }
  if (p >= buf + len) {
   if (hexstr)
    warnx("hexadecimal digits too long");
   else
    warnx("string too long");
   return ((void*)0);
  }
  if (hexstr) {

   *p++ = ((isdigit((u_char)val[0]) ? ((u_char)val[0]) - '0' : tolower((u_char)val[0]) - 'a' + 10) << 4) |
       (isdigit((u_char)val[1]) ? ((u_char)val[1]) - '0' : tolower((u_char)val[1]) - 'a' + 10);

   val += 2;
  } else
   *p++ = *val++;
 }
 len = p - buf;

 if (!hexstr && len == 1 && buf[0] == '-') {
  len = 0;
  memset(buf, 0, *lenp);
 } else if (len < *lenp)
  memset(p, 0, *lenp - len);
 *lenp = len;
 return val;
}
