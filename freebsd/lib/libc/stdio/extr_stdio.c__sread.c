
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* _read ) (int ,char*,int) ;int _flags; int _offset; int _cookie; } ;
typedef TYPE_1__ FILE ;


 int OFF_MAX ;
 int __SOFF ;
 int stub1 (int ,char*,int) ;

int
_sread(FILE *fp, char *buf, int n)
{
 int ret;

 ret = (*fp->_read)(fp->_cookie, buf, n);
 if (ret > 0) {
  if (fp->_flags & __SOFF) {
   if (fp->_offset <= OFF_MAX - ret)
    fp->_offset += ret;
   else
    fp->_flags &= ~__SOFF;
  }
 } else if (ret < 0)
  fp->_flags &= ~__SOFF;
 return (ret);
}
