
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fopencookie_thunk {int foc_io; void* foc_cookie; } ;
typedef int cookie_io_functions_t ;
struct TYPE_4__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 int O_APPEND ;
 int __SAPP ;
 int __SRD ;
 int __SWR ;
 int __sflags (char const*,int*) ;
 int _fopencookie_close ;
 int _fopencookie_read (void*,char*,int) ;
 int _fopencookie_seek ;
 int _fopencookie_write (void*,char const*,int) ;
 int free (struct fopencookie_thunk*) ;
 TYPE_1__* funopen (struct fopencookie_thunk*,int (*) (void*,char*,int),int (*) (void*,char const*,int),int ,int ) ;
 struct fopencookie_thunk* malloc (int) ;

FILE *
fopencookie(void *cookie, const char *mode, cookie_io_functions_t io_funcs)
{
 int (*readfn)(void *, char *, int);
 int (*writefn)(void *, const char *, int);
 struct fopencookie_thunk *thunk;
 FILE *fp;
 int flags, oflags;

 if ((flags = __sflags(mode, &oflags)) == 0)
  return (((void*)0));

 thunk = malloc(sizeof(*thunk));
 if (thunk == ((void*)0))
  return (((void*)0));

 thunk->foc_cookie = cookie;
 thunk->foc_io = io_funcs;

 readfn = _fopencookie_read;
 writefn = _fopencookie_write;
 if (flags == __SWR)
  readfn = ((void*)0);
 else if (flags == __SRD)
  writefn = ((void*)0);

 fp = funopen(thunk, readfn, writefn, _fopencookie_seek,
     _fopencookie_close);
 if (fp == ((void*)0)) {
  free(thunk);
  return (((void*)0));
 }

 if ((oflags & O_APPEND) != 0)
  fp->_flags |= __SAPP;

 return (fp);
}
