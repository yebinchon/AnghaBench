
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmemstream {scalar_t__ offset; scalar_t__ len; scalar_t__* bufp; int mbstate; } ;
typedef scalar_t__ ssize_t ;


 int EILSEQ ;
 int errno ;
 int fprintf (int ,char*,struct wmemstream*,int,scalar_t__) ;
 size_t mbrtowc (scalar_t__,char const*,int,int *) ;
 int stderr ;
 scalar_t__ wbuflen (int *,char const*,int) ;
 int wmemstream_grow (struct wmemstream*,scalar_t__) ;
 int wmemstream_update (struct wmemstream*) ;

__attribute__((used)) static int
wmemstream_write(void *cookie, const char *buf, int len)
{
 struct wmemstream *ms;
 ssize_t consumed, wlen;
 size_t charlen;

 ms = cookie;
 wlen = wbuflen(&ms->mbstate, buf, len);
 if (wlen < 0) {
  errno = EILSEQ;
  return (-1);
 }
 if (!wmemstream_grow(ms, ms->offset + wlen))
  return (-1);






 consumed = 0;
 while (len > 0 && ms->offset < ms->len) {
  charlen = mbrtowc(*ms->bufp + ms->offset, buf, len,
      &ms->mbstate);
  if (charlen == (size_t)-1) {
   if (consumed == 0) {
    errno = EILSEQ;
    return (-1);
   }

   break;
  }
  if (charlen == 0)

   charlen = 1;
  if (charlen == (size_t)-2) {
   consumed += len;
   len = 0;
  } else {
   consumed += charlen;
   buf += charlen;
   len -= charlen;
   ms->offset++;
  }
 }
 wmemstream_update(ms);



 return (consumed);
}
