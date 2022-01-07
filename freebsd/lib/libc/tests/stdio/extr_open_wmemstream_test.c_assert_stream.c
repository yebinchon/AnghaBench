
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ buf ;
 scalar_t__ len ;
 int printf (char*,scalar_t__,int const*) ;
 scalar_t__ wcslen (int const*) ;
 scalar_t__ wcsncmp (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static void
assert_stream(const wchar_t *contents)
{
 if (wcslen(contents) != len)
  printf("bad length %zd for \"%ls\"\n", len, contents);
 else if (wcsncmp(buf, contents, wcslen(contents)) != 0)
  printf("bad buffer \"%ls\" for \"%ls\"\n", buf, contents);
}
