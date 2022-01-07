
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int tpr; } ;



__attribute__((used)) static uint8_t
vlapic_get_tpr(struct vlapic *vlapic)
{
 struct LAPIC *lapic = vlapic->apic_page;

 return (lapic->tpr);
}
