
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int * irp_csl; } ;
struct TYPE_6__ {TYPE_1__ irp_overlay; } ;
struct TYPE_7__ {int irp_stackcnt; int irp_currentstackloc; TYPE_2__ irp_tail; int irp_thlist; int irp_size; } ;
typedef TYPE_3__ irp ;
typedef int io_stack_location ;


 int InitializeListHead (int *) ;
 int IoSizeOfIrp (int) ;
 int bzero (char*,int ) ;

__attribute__((used)) static void
IoInitializeIrp(irp *io, uint16_t psize, uint8_t ssize)
{
 bzero((char *)io, IoSizeOfIrp(ssize));
 io->irp_size = psize;
 io->irp_stackcnt = ssize;
 io->irp_currentstackloc = ssize;
 InitializeListHead(&io->irp_thlist);
 io->irp_tail.irp_overlay.irp_csl =
     (io_stack_location *)(io + 1) + ssize;
}
