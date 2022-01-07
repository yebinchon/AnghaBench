
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_wstring {size_t length; int* s; } ;
typedef int shift_state ;
typedef int mbstate_t ;


 scalar_t__ EILSEQ ;
 int * archive_wstring_ensure (struct archive_wstring*,size_t) ;
 scalar_t__ errno ;
 size_t mbrtowc (int*,char const*,size_t,int *) ;
 size_t mbtowc (int*,char const*,size_t) ;
 int memset (int *,int ,int) ;

int
archive_wstring_append_from_mbs(struct archive_wstring *dest,
    const char *p, size_t len)
{
 size_t r;
 int ret_val = 0;




 size_t wcs_length = len;
 size_t mbs_length = len;
 const char *mbs = p;
 wchar_t *wcs;





 if (((void*)0) == archive_wstring_ensure(dest, dest->length + wcs_length + 1))
  return (-1);
 wcs = dest->s + dest->length;





 while (*mbs && mbs_length > 0) {
  if (wcs_length == 0) {
   dest->length = wcs - dest->s;
   dest->s[dest->length] = L'\0';
   wcs_length = mbs_length;
   if (((void*)0) == archive_wstring_ensure(dest,
       dest->length + wcs_length + 1))
    return (-1);
   wcs = dest->s + dest->length;
  }



  r = mbtowc(wcs, mbs, wcs_length);

  if (r == (size_t)-1 || r == (size_t)-2) {
   ret_val = -1;
   if (errno == EILSEQ) {
    ++mbs;
    --mbs_length;
    continue;
   } else
    break;
  }
  if (r == 0 || r > mbs_length)
   break;
  wcs++;
  wcs_length--;
  mbs += r;
  mbs_length -= r;
 }
 dest->length = wcs - dest->s;
 dest->s[dest->length] = L'\0';
 return (ret_val);
}
