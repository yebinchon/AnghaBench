
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcb {int pcb_pagedir; } ;
typedef int pmap_t ;


 int pmap_ttb_get (int ) ;

void
pmap_set_pcb_pagedir(pmap_t pmap, struct pcb *pcb)
{

 pcb->pcb_pagedir = pmap_ttb_get(pmap);
}
