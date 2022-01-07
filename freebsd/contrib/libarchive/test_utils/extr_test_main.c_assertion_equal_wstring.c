
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int assertion_count (char const*,int) ;
 int failure_finish (void*) ;
 int failure_start (char const*,int,char*,char const*,char const*) ;
 scalar_t__ wcscmp (int const*,int const*) ;
 int wcsdump (char const*,int const*) ;

int
assertion_equal_wstring(const char *file, int line,
    const wchar_t *v1, const char *e1,
    const wchar_t *v2, const char *e2,
    void *extra)
{
 assertion_count(file, line);
 if (v1 == v2)
  return (1);
 if (v1 != ((void*)0) && v2 != ((void*)0) && wcscmp(v1, v2) == 0)
  return (1);
 failure_start(file, line, "%s != %s", e1, e2);
 wcsdump(e1, v1);
 wcsdump(e2, v2);
 failure_finish(extra);
 return (0);
}
