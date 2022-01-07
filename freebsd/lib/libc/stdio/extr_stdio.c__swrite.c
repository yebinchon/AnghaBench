
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fpos_t ;
struct TYPE_4__ {int _flags; int (* _write ) (int ,char const*,int) ;int _flags2; int _offset; int _cookie; } ;
typedef TYPE_1__ FILE ;


 int OFF_MAX ;
 int SEEK_END ;
 int __S2OAP ;
 int __SAPP ;
 int __SOFF ;
 int __SOPT ;
 int _sseek (TYPE_1__*,int ,int ) ;
 int errno ;
 int stub1 (int ,char const*,int) ;

int
_swrite(FILE *fp, char const *buf, int n)
{
 int ret;
 int serrno;

 if (fp->_flags & __SAPP) {
  serrno = errno;
  if (_sseek(fp, (fpos_t)0, SEEK_END) == -1 &&
      (fp->_flags & __SOPT))
   return (-1);
  errno = serrno;
 }
 ret = (*fp->_write)(fp->_cookie, buf, n);

 if (ret >= 0) {
  if ((fp->_flags & __SOFF) && !(fp->_flags2 & __S2OAP) &&
      fp->_offset <= OFF_MAX - ret)
   fp->_offset += ret;
  else
   fp->_flags &= ~__SOFF;

 } else if (ret < 0)
  fp->_flags &= ~__SOFF;
 return (ret);
}
