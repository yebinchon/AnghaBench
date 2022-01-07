
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char ;


 int ENOMEM ;
 int EOVERFLOW ;
 int free (char*) ;
 char* malloc (size_t) ;
 int utf8_len_of_ucs2 (int const*) ;

int
ucs2_to_utf8(const efi_char *nm, char **name)
{
 size_t len, sz;
 efi_char c;
 char *cp;
 int freeit = *name == ((void*)0);

 sz = utf8_len_of_ucs2(nm) + 1;
 len = 0;
 if (*name != ((void*)0))
  cp = *name;
 else
  cp = *name = malloc(sz);
 if (*name == ((void*)0))
  return (ENOMEM);

 while (*nm) {
  c = *nm++;
  if (c > 0x7ff) {
   if (len++ < sz)
    *cp++ = (char)(0xE0 | (c >> 12));
   if (len++ < sz)
    *cp++ = (char)(0x80 | ((c >> 6) & 0x3f));
   if (len++ < sz)
    *cp++ = (char)(0x80 | (c & 0x3f));
  } else if (c > 0x7f) {
   if (len++ < sz)
    *cp++ = (char)(0xC0 | ((c >> 6) & 0x1f));
   if (len++ < sz)
    *cp++ = (char)(0x80 | (c & 0x3f));
  } else {
   if (len++ < sz)
    *cp++ = (char)(c & 0x7f);
  }
 }

 if (len >= sz) {

  if (freeit) {
   free(*name);
   *name = ((void*)0);
  }
  return (EOVERFLOW);
 }
 *cp++ = '\0';

 return (0);
}
