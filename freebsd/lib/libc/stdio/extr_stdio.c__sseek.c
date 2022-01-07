
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ fpos_t ;
struct TYPE_6__ {int _base; } ;
struct TYPE_7__ {scalar_t__ (* _seek ) (int ,scalar_t__,int) ;int _flags; scalar_t__ _offset; scalar_t__ _r; TYPE_1__ _bf; int _p; int _cookie; } ;
typedef TYPE_2__ FILE ;


 int EINVAL ;
 int ESPIPE ;
 int FREEUB (TYPE_2__*) ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int SEEK_CUR ;
 int __SAPP ;
 int __SEOF ;
 int __SERR ;
 int __SOFF ;
 int __SOPT ;
 int errno ;
 scalar_t__ stub1 (int ,scalar_t__,int) ;

fpos_t
_sseek(FILE *fp, fpos_t offset, int whence)
{
 fpos_t ret;
 int serrno, errret;

 serrno = errno;
 errno = 0;
 ret = (*fp->_seek)(fp->_cookie, offset, whence);
 errret = errno;
 if (errno == 0)
  errno = serrno;





 if (ret < 0) {
  if (errret == 0) {
   if (offset != 0 || whence != SEEK_CUR) {
    if (HASUB(fp))
     FREEUB(fp);
    fp->_p = fp->_bf._base;
    fp->_r = 0;
    fp->_flags &= ~__SEOF;
   }
   fp->_flags |= __SERR;
   errno = EINVAL;
  } else if (errret == ESPIPE)
   fp->_flags &= ~__SAPP;
  fp->_flags &= ~__SOFF;
  ret = -1;
 } else if (fp->_flags & __SOPT) {
  fp->_flags |= __SOFF;
  fp->_offset = ret;
 }
 return (ret);
}
