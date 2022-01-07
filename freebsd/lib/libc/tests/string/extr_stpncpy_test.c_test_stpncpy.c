
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* makebuf (size_t,int) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,char,size_t) ;
 char* stpncpy (char*,char*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void
test_stpncpy(const char *s)
{
 char *src, *dst;
 size_t size, len, bufsize, x;
 int i, j;

 size = strlen(s) + 1;
 for (i = 0; i <= 1; i++) {
  for (j = 0; j <= 1; j++) {
   for (bufsize = 0; bufsize <= size + 10; bufsize++) {
    src = makebuf(size, i);
    memcpy(src, s, size);
    dst = makebuf(bufsize, j);
    memset(dst, 'X', bufsize);
    len = (bufsize < size) ? bufsize : size - 1;
    assert(stpncpy(dst, src, bufsize) == dst+len);
    assert(memcmp(src, dst, len) == 0);
    for (x = len; x < bufsize; x++)
     assert(dst[x] == '\0');
   }
  }
 }
}
