
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __printf_io {int uio; int fp; } ;


 int __printf_init (struct __printf_io*) ;
 int __sfvwrite (int ,int *) ;

void
__printf_flush(struct __printf_io *io)
{

 __sfvwrite(io->fp, &io->uio);
 __printf_init(io);
}
