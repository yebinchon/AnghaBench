
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int id; } ;


 int vlapic_get_id (struct vlapic*) ;

void
vlapic_id_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;





 lapic = vlapic->apic_page;
 lapic->id = vlapic_get_id(vlapic);
}
