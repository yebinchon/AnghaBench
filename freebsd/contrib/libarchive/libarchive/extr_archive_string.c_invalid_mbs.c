
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_string_conv {int dummy; } ;
typedef int shift_state ;
typedef int mbstate_t ;


 size_t mbrtowc (int *,char const*,size_t,int *) ;
 size_t mbtowc (int *,char const*,size_t) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
invalid_mbs(const void *_p, size_t n, struct archive_string_conv *sc)
{
 const char *p = (const char *)_p;
 size_t r;







 mbtowc(((void*)0), ((void*)0), 0);

 while (n) {
  wchar_t wc;




  r = mbtowc(&wc, p, n);

  if (r == (size_t)-1 || r == (size_t)-2)
   return (-1);
  if (r == 0)
   break;
  p += r;
  n -= r;
 }
 (void)sc;
 return (0);
}
