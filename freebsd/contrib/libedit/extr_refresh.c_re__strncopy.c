
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static void
re__strncopy(wchar_t *a, wchar_t *b, size_t n)
{

 while (n-- && *b)
  *a++ = *b++;
}
