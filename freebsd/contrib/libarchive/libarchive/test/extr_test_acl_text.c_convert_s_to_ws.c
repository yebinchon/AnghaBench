
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int assert (int) ;
 int * malloc (size_t) ;
 size_t mbstowcs (int *,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static wchar_t *
convert_s_to_ws(const char *s)
{
 size_t len;
 wchar_t *ws = ((void*)0);

 if (s != ((void*)0)) {
  len = strlen(s) + 1;
  ws = malloc(len * sizeof(wchar_t));
  assert(mbstowcs(ws, s, len) != (size_t)-1);
 }

 return (ws);
}
