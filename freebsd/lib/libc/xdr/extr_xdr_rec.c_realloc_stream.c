
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int bool_t ;
struct TYPE_3__ {int recvsize; char* in_base; int in_finger; char* in_boundry; int in_size; } ;
typedef TYPE_1__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static bool_t
realloc_stream(RECSTREAM *rstrm, int size)
{
 ptrdiff_t diff;
 char *buf;

 if (size > rstrm->recvsize) {
  buf = realloc(rstrm->in_base, (size_t)size);
  if (buf == ((void*)0))
   return FALSE;
  diff = buf - rstrm->in_base;
  rstrm->in_finger += diff;
  rstrm->in_base = buf;
  rstrm->in_boundry = buf + size;
  rstrm->recvsize = size;
  rstrm->in_size = size;
 }

 return TRUE;
}
