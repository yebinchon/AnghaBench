
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 char* strchr (char*,char) ;

__attribute__((used)) static int
remote_fileio_extract_long (char **buf, LONGEST *retlong)
{
  char *c;
  int sign = 1;

  if (!buf || !*buf || !**buf || !retlong)
    return -1;
  c = strchr (*buf, ',');
  if (c)
    *c++ = '\0';
  else
    c = strchr (*buf, '\0');
  while (strchr ("+-", **buf))
    {
      if (**buf == '-')
 sign = -sign;
      ++*buf;
    }
  for (*retlong = 0; **buf; ++*buf)
    {
      *retlong <<= 4;
      if (**buf >= '0' && **buf <= '9')
        *retlong += **buf - '0';
      else if (**buf >= 'a' && **buf <= 'f')
        *retlong += **buf - 'a' + 10;
      else if (**buf >= 'A' && **buf <= 'F')
        *retlong += **buf - 'A' + 10;
      else
        return -1;
    }
  *retlong *= sign;
  *buf = c;
  return 0;
}
