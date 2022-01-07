
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcfile {int dummy; } ;


 int EINVAL ;
 int rc_getstringptr (struct rcfile*,char const*,char const*,char**) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int warnx (char*,char const*,char const*,size_t) ;

int
rc_getstring(struct rcfile *rcp, const char *section, const char *key,
 size_t maxlen, char *dest)
{
 char *value;
 int error;

 error = rc_getstringptr(rcp, section, key, &value);
 if (error)
  return error;
 if (strlen(value) >= maxlen) {
  warnx("line too long for key '%s' in section '%s', max = %zd\n", key, section, maxlen);
  return EINVAL;
 }
 strcpy(dest, value);
 return 0;
}
