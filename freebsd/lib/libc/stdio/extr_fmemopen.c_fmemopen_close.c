
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmemopen_cookie {struct fmemopen_cookie* buf; scalar_t__ own; } ;


 int free (struct fmemopen_cookie*) ;

__attribute__((used)) static int
fmemopen_close(void *cookie)
{
 struct fmemopen_cookie *ck = cookie;

 if (ck->own)
  free(ck->buf);

 free(ck);

 return (0);
}
