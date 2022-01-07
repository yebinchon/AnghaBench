
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_state {int uio; int fp; } ;
typedef int locale_t ;


 int __sprint (int ,int *,int ) ;

__attribute__((used)) static inline int
io_flush(struct io_state *iop, locale_t locale)
{

 return (__sprint(iop->fp, &iop->uio, locale));
}
