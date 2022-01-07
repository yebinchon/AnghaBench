
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned char* _base; int _size; } ;
struct TYPE_10__ {size_t _r; size_t _lbfsize; int _flags; size_t _w; unsigned char* _p; unsigned char* _nbuf; TYPE_1__ _bf; } ;
typedef TYPE_2__ FILE ;


 int EOF ;
 int FLOCKFILE_CANCELSAFE (TYPE_2__*) ;
 int FREEUB (TYPE_2__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int _IOFBF ;
 int _IOLBF ;
 int _IONBF ;
 int __SEOF ;
 int __SLBF ;
 int __SMBF ;
 int __SNBF ;
 int __SNPT ;
 int __SOFF ;
 int __SOPT ;
 int __SWR ;
 int __cleanup ;
 int __sflush (TYPE_2__*) ;
 int __swhatbuf (TYPE_2__*,size_t*,int*) ;
 int _cleanup ;
 int free (void*) ;
 char* malloc (size_t) ;

int
setvbuf(FILE * __restrict fp, char * __restrict buf, int mode, size_t size)
{
 int ret, flags;
 size_t iosize;
 int ttyflag;






 if (mode != _IONBF)
  if ((mode != _IOFBF && mode != _IOLBF) || (int)size < 0)
   return (EOF);

 FLOCKFILE_CANCELSAFE(fp);






 ret = 0;
 (void)__sflush(fp);
 if (HASUB(fp))
  FREEUB(fp);
 fp->_r = fp->_lbfsize = 0;
 flags = fp->_flags;
 if (flags & __SMBF)
  free((void *)fp->_bf._base);
 flags &= ~(__SLBF | __SNBF | __SMBF | __SOPT | __SOFF | __SNPT | __SEOF);


 if (mode == _IONBF)
  goto nbf;






 flags |= __swhatbuf(fp, &iosize, &ttyflag);
 if (size == 0) {
  buf = ((void*)0);
  size = iosize;
 }


 if (buf == ((void*)0)) {
  if ((buf = malloc(size)) == ((void*)0)) {




   ret = EOF;
   if (size != iosize) {
    size = iosize;
    buf = malloc(size);
   }
  }
  if (buf == ((void*)0)) {

nbf:
   fp->_flags = flags | __SNBF;
   fp->_w = 0;
   fp->_bf._base = fp->_p = fp->_nbuf;
   fp->_bf._size = 1;
   goto end;
  }
  flags |= __SMBF;
 }







 if (size != iosize)
  flags |= __SNPT;





 if (mode == _IOLBF)
  flags |= __SLBF;
 fp->_flags = flags;
 fp->_bf._base = fp->_p = (unsigned char *)buf;
 fp->_bf._size = size;

 if (flags & __SWR) {




  if (flags & __SLBF) {
   fp->_w = 0;
   fp->_lbfsize = -fp->_bf._size;
  } else
   fp->_w = size;
 } else {

  fp->_w = 0;
 }
 __cleanup = _cleanup;

end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
