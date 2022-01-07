
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ _base; } ;
struct TYPE_10__ {int _flags; scalar_t__ (* _close ) (int ) ;int _file; scalar_t__ _w; scalar_t__ _r; TYPE_1__ _bf; int _cookie; } ;
typedef TYPE_2__ FILE ;


 int EOF ;
 int FREELB (TYPE_2__*) ;
 int FREEUB (TYPE_2__*) ;
 scalar_t__ HASLB (TYPE_2__*) ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int STDIO_THREAD_LOCK () ;
 int STDIO_THREAD_UNLOCK () ;
 int __SMBF ;
 int __SWR ;
 int __sflush (TYPE_2__*) ;
 int free (char*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int
cleanfile(FILE *fp, bool c)
{
 int r;

 r = fp->_flags & __SWR ? __sflush(fp) : 0;
 if (c) {
  if (fp->_close != ((void*)0) && (*fp->_close)(fp->_cookie) < 0)
   r = EOF;
 }

 if (fp->_flags & __SMBF)
  free((char *)fp->_bf._base);
 if (HASUB(fp))
  FREEUB(fp);
 if (HASLB(fp))
  FREELB(fp);
 fp->_file = -1;
 fp->_r = fp->_w = 0;
 STDIO_THREAD_LOCK();
 fp->_flags = 0;
 STDIO_THREAD_UNLOCK();

 return (r);
}
