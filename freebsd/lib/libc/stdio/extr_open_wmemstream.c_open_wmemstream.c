
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmemstream {size_t* sizep; int mbstate; scalar_t__ offset; scalar_t__ len; struct wmemstream** bufp; } ;
typedef struct wmemstream wchar_t ;
typedef int mbstate_t ;
typedef int FILE ;


 int EINVAL ;
 struct wmemstream* calloc (int,int) ;
 int errno ;
 int free (struct wmemstream*) ;
 int * funopen (struct wmemstream*,int *,int ,int ,int ) ;
 int fwide (int *,int) ;
 struct wmemstream* malloc (int) ;
 int memset (int *,int ,int) ;
 int wmemstream_close ;
 int wmemstream_seek ;
 int wmemstream_update (struct wmemstream*) ;
 int wmemstream_write ;

FILE *
open_wmemstream(wchar_t **bufp, size_t *sizep)
{
 struct wmemstream *ms;
 int save_errno;
 FILE *fp;

 if (bufp == ((void*)0) || sizep == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }
 *bufp = calloc(1, sizeof(wchar_t));
 if (*bufp == ((void*)0))
  return (((void*)0));
 ms = malloc(sizeof(*ms));
 if (ms == ((void*)0)) {
  save_errno = errno;
  free(*bufp);
  *bufp = ((void*)0);
  errno = save_errno;
  return (((void*)0));
 }
 ms->bufp = bufp;
 ms->sizep = sizep;
 ms->len = 0;
 ms->offset = 0;
 memset(&ms->mbstate, 0, sizeof(mbstate_t));
 wmemstream_update(ms);
 fp = funopen(ms, ((void*)0), wmemstream_write, wmemstream_seek,
     wmemstream_close);
 if (fp == ((void*)0)) {
  save_errno = errno;
  free(ms);
  free(*bufp);
  *bufp = ((void*)0);
  errno = save_errno;
  return (((void*)0));
 }
 fwide(fp, 1);
 return (fp);
}
