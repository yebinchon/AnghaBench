
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct wmemstream {int len; int ** bufp; } ;
typedef int ssize_t ;
typedef int fpos_t ;


 int SSIZE_MAX ;
 int fprintf (int ,char*,struct wmemstream*,int,int) ;
 int * reallocarray (int *,int,int) ;
 int stderr ;
 int wmemset (int *,int ,int) ;

__attribute__((used)) static int
wmemstream_grow(struct wmemstream *ms, fpos_t newoff)
{
 wchar_t *buf;
 ssize_t newsize;

 if (newoff < 0 || newoff >= SSIZE_MAX / sizeof(wchar_t))
  newsize = SSIZE_MAX / sizeof(wchar_t) - 1;
 else
  newsize = newoff;
 if (newsize > ms->len) {
  buf = reallocarray(*ms->bufp, newsize + 1, sizeof(wchar_t));
  if (buf != ((void*)0)) {




   wmemset(buf + ms->len + 1, 0, newsize - ms->len);
   *ms->bufp = buf;
   ms->len = newsize;
   return (1);
  }
  return (0);
 }
 return (1);
}
