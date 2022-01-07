
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fpos_t ;
struct TYPE_6__ {int * _base; } ;
struct TYPE_7__ {int _flags; int _flags2; int _offset; scalar_t__ _ur; scalar_t__ _r; TYPE_1__ _bf; int * _p; int * _seek; } ;
typedef TYPE_2__ FILE ;


 int EIO ;
 int EOVERFLOW ;
 int ESPIPE ;
 scalar_t__ HASUB (TYPE_2__*) ;
 size_t OFF_MAX ;
 int SEEK_CUR ;
 int SEEK_END ;
 int __S2OAP ;
 int __SAPP ;
 int __SERR ;
 int __SOFF ;
 int __SRD ;
 int __SWR ;
 int _sseek (TYPE_2__*,int,int ) ;
 int errno ;

int
_ftello(FILE *fp, fpos_t *offset)
{
 fpos_t pos;
 size_t n;

 if (fp->_seek == ((void*)0)) {
  errno = ESPIPE;
  return (1);
 }





 if (!(fp->_flags & __SRD) && (fp->_flags & __SWR) &&
     fp->_p != ((void*)0) && fp->_p - fp->_bf._base > 0 &&
     ((fp->_flags & __SAPP) || (fp->_flags2 & __S2OAP))) {
  pos = _sseek(fp, (fpos_t)0, SEEK_END);
  if (pos == -1)
   return (1);
 } else if (fp->_flags & __SOFF)
  pos = fp->_offset;
 else {
  pos = _sseek(fp, (fpos_t)0, SEEK_CUR);
  if (pos == -1)
   return (1);
 }
 if (fp->_flags & __SRD) {





  if ((pos -= (HASUB(fp) ? fp->_ur : fp->_r)) < 0) {
   fp->_flags |= __SERR;
   errno = EIO;
   return (1);
  }
  if (HASUB(fp))
   pos -= fp->_r;
 } else if ((fp->_flags & __SWR) && fp->_p != ((void*)0) &&
     (n = fp->_p - fp->_bf._base) > 0) {





  if (pos > OFF_MAX - n) {
   errno = EOVERFLOW;
   return (1);
  }
  pos += n;
 }
 *offset = pos;
 return (0);
}
