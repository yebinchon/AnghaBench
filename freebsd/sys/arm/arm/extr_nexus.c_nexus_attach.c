
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {char* rm_descr; int rm_type; int rm_end; scalar_t__ rm_start; } ;


 int BUS_SPACE_MAXADDR ;
 int RMAN_ARRAY ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
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
  panic("nexus_probe mem_rman");




 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
