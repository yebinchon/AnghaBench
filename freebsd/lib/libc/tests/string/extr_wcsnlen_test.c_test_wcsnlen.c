
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ATF_CHECK (int) ;
 int * makebuf (size_t,int) ;
 int wcslen (int const*) ;
 size_t wcsnlen (int *,size_t) ;
 int wmemcpy (int *,int const*,size_t) ;

__attribute__((used)) static void
test_wcsnlen(const wchar_t *s)
{
 wchar_t *s1;
 size_t size, len, bufsize;
 int i;

 size = wcslen(s) + 1;
 for (i = 0; i <= 1; i++) {
  for (bufsize = 0; bufsize <= size + 10; bufsize++) {
   s1 = makebuf(bufsize * sizeof(wchar_t), i);
   wmemcpy(s1, s, bufsize <= size ? bufsize : size);
   len = (size > bufsize) ? bufsize : size - 1;
   ATF_CHECK(wcsnlen(s1, bufsize) == len);
  }
 }
}
