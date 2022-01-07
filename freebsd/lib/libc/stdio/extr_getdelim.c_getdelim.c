
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ssize_t ;
struct TYPE_7__ {scalar_t__ _r; int _flags; int * _p; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (TYPE_1__*,int) ;
 int __SERR ;
 int __sfeof (TYPE_1__*) ;
 scalar_t__ __srefill (TYPE_1__*) ;
 int errno ;
 scalar_t__ expandtofit (char**,int,size_t*) ;
 int * memchr (int *,int,scalar_t__) ;
 scalar_t__ sappend (char**,size_t*,size_t*,int *,int) ;

ssize_t
getdelim(char ** __restrict linep, size_t * __restrict linecapp, int delim,
  FILE * __restrict fp)
{
 u_char *endp;
 size_t linelen;

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);

 if (linep == ((void*)0) || linecapp == ((void*)0)) {
  errno = EINVAL;
  goto error;
 }

 if (*linep == ((void*)0))
  *linecapp = 0;

 if (fp->_r <= 0 && __srefill(fp)) {

  if (!__sfeof(fp) || expandtofit(linep, 1, linecapp))
   goto error;
  (*linep)[0] = '\0';
  linelen = -1;
  goto end;
 }

 linelen = 0;
 while ((endp = memchr(fp->_p, delim, fp->_r)) == ((void*)0)) {
  if (sappend(linep, &linelen, linecapp, fp->_p, fp->_r))
   goto error;
  if (__srefill(fp)) {
   if (!__sfeof(fp))
    goto error;
   goto done;
  }
 }
 endp++;
 if (sappend(linep, &linelen, linecapp, fp->_p, endp - fp->_p))
  goto error;
 fp->_r -= endp - fp->_p;
 fp->_p = endp;
done:

 (*linep)[linelen] = '\0';
end:
 FUNLOCKFILE_CANCELSAFE();
 return (linelen);

error:
 fp->_flags |= __SERR;
 linelen = -1;
 goto end;
}
