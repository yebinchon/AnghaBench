
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_5__ {char* rm_descr; void* rm_type; int rm_end; scalar_t__ rm_start; } ;


 int BUS_SPACE_MAXADDR ;
 void* RMAN_ARRAY ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 TYPE_1__ irq_rman ;
 TYPE_1__ mem_rman ;
 int panic (char*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
nexus_attach(device_t dev)
{

 mem_rman.rm_start = 0;
 mem_rman.rm_end = BUS_SPACE_MAXADDR;
 mem_rman.rm_type = RMAN_ARRAY;
 mem_rman.rm_descr = "I/O memory addresses";
 if (rman_init(&mem_rman) ||
     rman_manage_region(&mem_rman, 0, BUS_SPACE_MAXADDR))
  panic("nexus_attach mem_rman");
 irq_rman.rm_start = 0;
 irq_rman.rm_end = ~0;
 irq_rman.rm_type = RMAN_ARRAY;
 irq_rman.rm_descr = "Interrupts";
 if (rman_init(&irq_rman) || rman_manage_region(&irq_rman, 0, ~0))
  panic("nexus_attach irq_rman");

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
