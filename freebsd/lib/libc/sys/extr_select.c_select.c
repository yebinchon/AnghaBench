
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 size_t INTERPOS_select ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,int *,int *,int *,struct timeval*) ;

int
select(int n, fd_set *rs, fd_set *ws, fd_set *es, struct timeval *t)
{

 return (((int (*)(int, fd_set *, fd_set *, fd_set *, struct timeval *))
     __libc_interposing[INTERPOS_select])(n, rs, ws, es, t));
}
