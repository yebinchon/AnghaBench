
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstream {scalar_t__ len; char** bufp; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ fpos_t ;


 scalar_t__ SSIZE_MAX ;
 int fprintf (int ,char*,struct memstream*,scalar_t__,scalar_t__) ;
 int memset (char*,int ,scalar_t__) ;
 char* realloc (char*,scalar_t__) ;
 int stderr ;

__attribute__((used)) static int
memstream_grow(struct memstream *ms, fpos_t newoff)
{
 char *buf;
 ssize_t newsize;

 if (newoff < 0 || newoff >= SSIZE_MAX)
  newsize = SSIZE_MAX - 1;
 else
  newsize = newoff;
 if (newsize > ms->len) {
  buf = realloc(*ms->bufp, newsize + 1);
  if (buf != ((void*)0)) {




   memset(buf + ms->len + 1, 0, newsize - ms->len);
   *ms->bufp = buf;
   ms->len = newsize;
   return (1);
  }
  return (0);
 }
 return (1);
}
