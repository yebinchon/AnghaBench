
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmemstream {scalar_t__ offset; scalar_t__ len; int mbstate; } ;
typedef int intmax_t ;
typedef scalar_t__ fpos_t ;


 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ FPOS_MAX ;



 int assert (int) ;
 int errno ;
 int fprintf (int ,char*,struct wmemstream*,scalar_t__,...) ;
 int memset (int *,int ,int) ;
 int stderr ;
 int wmemstream_update (struct wmemstream*) ;

__attribute__((used)) static fpos_t
wmemstream_seek(void *cookie, fpos_t pos, int whence)
{
 struct wmemstream *ms;
 fpos_t old;

 ms = cookie;
 old = ms->offset;
 switch (whence) {
 case 128:

  assert(pos >= 0);
  ms->offset = pos;
  break;
 case 130:

  assert(pos == 0);
  break;
 case 129:
  if (pos < 0) {
   if (pos + ms->len < 0) {





    errno = EINVAL;
    return (-1);
   }
  } else {
   if (FPOS_MAX - ms->len < pos) {





    errno = EOVERFLOW;
    return (-1);
   }
  }
  ms->offset = ms->len + pos;
  break;
 }

 if (ms->offset != old)
  memset(&ms->mbstate, 0, sizeof(ms->mbstate));
 wmemstream_update(ms);




 return (ms->offset);
}
