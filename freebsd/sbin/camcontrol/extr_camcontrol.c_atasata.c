
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int satacapabilities; } ;



__attribute__((used)) static int
atasata(struct ata_params *parm)
{


 if (parm->satacapabilities != 0xffff &&
     parm->satacapabilities != 0x0000)
  return 1;

 return 0;
}
