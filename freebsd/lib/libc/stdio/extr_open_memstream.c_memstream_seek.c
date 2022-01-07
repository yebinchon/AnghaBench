
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstream {int offset; int len; } ;
typedef int intmax_t ;
typedef int fpos_t ;


 int EINVAL ;
 int EOVERFLOW ;
 int FPOS_MAX ;



 int assert (int) ;
 int errno ;
 int fprintf (int ,char*,struct memstream*,int,...) ;
 int memstream_update (struct memstream*) ;
 int stderr ;

__attribute__((used)) static fpos_t
memstream_seek(void *cookie, fpos_t pos, int whence)
{
 struct memstream *ms;




 ms = cookie;



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
 memstream_update(ms);




 return (ms->offset);
}
