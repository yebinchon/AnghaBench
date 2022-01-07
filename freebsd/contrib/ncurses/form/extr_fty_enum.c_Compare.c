
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXACT ;
 int NOMATCH ;
 int PARTIAL ;
 int SKIP_SPACE (unsigned char const*) ;
 scalar_t__ toupper (unsigned char const) ;

__attribute__((used)) static int
Compare(const unsigned char *s, const unsigned char *buf,
 bool ccase)
{
  SKIP_SPACE(buf);
  SKIP_SPACE(s);

  if (*buf == '\0')
    {
      return (((*s) != '\0') ? NOMATCH : EXACT);
    }
  else
    {
      if (ccase)
 {
   while (*s++ == *buf)
     {
       if (*buf++ == '\0')
  return EXACT;
     }
 }
      else
 {
   while (toupper(*s++) == toupper(*buf))
     {
       if (*buf++ == '\0')
  return EXACT;
     }
 }
    }



  SKIP_SPACE(buf);
  if (*buf)
    return NOMATCH;



  return ((s[-1] != '\0') ? PARTIAL : EXACT);
}
