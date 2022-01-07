
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* do_svis (char*,int,int,int,char const*) ;
 int isalnum (int) ;
 int isascii (int) ;
 int * strchr (char*,int) ;
 void* xtoa (unsigned int) ;

__attribute__((used)) static char *
do_hvis(char *dst, int c, int flag, int nextc, const char *extra)
{
 if (!isascii(c) || !isalnum(c) || strchr("$-_.+!*'(),", c) != ((void*)0)) {
  *dst++ = '%';
  *dst++ = xtoa(((unsigned int)c >> 4) & 0xf);
  *dst++ = xtoa((unsigned int)c & 0xf);
 } else {
  dst = do_svis(dst, c, flag, nextc, extra);
 }
 return dst;
}
