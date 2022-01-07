
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static void
next_field_w(const wchar_t **wp, const wchar_t **start,
    const wchar_t **end, wchar_t *sep)
{

 while (**wp == L' ' || **wp == L'\t' || **wp == L'\n') {
  (*wp)++;
 }
 *start = *wp;


 while (**wp != L'\0' && **wp != L',' && **wp != L':' &&
     **wp != L'\n' && **wp != L'#') {
  (*wp)++;
 }
 *sep = **wp;


 if (*wp == *start) {
  *end = *wp;
 } else {
  *end = *wp - 1;
  while (**end == L' ' || **end == L'\t' || **end == L'\n') {
   (*end)--;
  }
  (*end)++;
 }


 if (*sep == L'#') {
  while (**wp != L'\0' && **wp != L',' && **wp != L'\n') {
   (*wp)++;
  }
  *sep = **wp;
 }


 if (**wp != L'\0')
  (*wp)++;
}
