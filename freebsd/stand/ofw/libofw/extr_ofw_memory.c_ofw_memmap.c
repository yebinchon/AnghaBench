
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ofw_mapping2 {int va; int len; int pa_lo; int mode; } ;
struct ofw_mapping {int va; int len; int pa; int mode; } ;
typedef int phandle_t ;
typedef int mappings ;


 int OF_getprop (int ,char*,int *,int) ;
 int OF_instance_to_package (int ) ;
 int bzero (int *,int) ;
 int mmu ;
 int pager_close () ;
 int pager_open () ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int,int,int,int,int,int) ;

void
ofw_memmap(int acells)
{
 struct ofw_mapping *mapptr;
 struct ofw_mapping2 *mapptr2;
        phandle_t mmup;
        int nmapping, i;
        u_char mappings[256 * sizeof(struct ofw_mapping2)];
        char lbuf[80];

 mmup = OF_instance_to_package(mmu);

 bzero(mappings, sizeof(mappings));

 nmapping = OF_getprop(mmup, "translations", mappings, sizeof(mappings));
 if (nmapping == -1) {
  printf("Could not get memory map (%d)\n",
      nmapping);
  return;
 }

 pager_open();
 if (acells == 1) {
  nmapping /= sizeof(struct ofw_mapping);
  mapptr = (struct ofw_mapping *) mappings;

  printf("%17s\t%17s\t%8s\t%6s\n", "Virtual Range",
      "Physical Range", "#Pages", "Mode");

  for (i = 0; i < nmapping; i++) {
   sprintf(lbuf, "%08x-%08x\t%08x-%08x\t%8d\t%6x\n",
    mapptr[i].va,
    mapptr[i].va + mapptr[i].len,
    mapptr[i].pa,
    mapptr[i].pa + mapptr[i].len,
    mapptr[i].len / 0x1000,
    mapptr[i].mode);
   if (pager_output(lbuf))
    break;
  }
 } else {
  nmapping /= sizeof(struct ofw_mapping2);
  mapptr2 = (struct ofw_mapping2 *) mappings;

  printf("%17s\t%17s\t%8s\t%6s\n", "Virtual Range",
         "Physical Range", "#Pages", "Mode");

  for (i = 0; i < nmapping; i++) {
   sprintf(lbuf, "%08x-%08x\t%08x-%08x\t%8d\t%6x\n",
    mapptr2[i].va,
    mapptr2[i].va + mapptr2[i].len,
    mapptr2[i].pa_lo,
    mapptr2[i].pa_lo + mapptr2[i].len,
    mapptr2[i].len / 0x1000,
    mapptr2[i].mode);
   if (pager_output(lbuf))
    break;
  }
 }
 pager_close();
}
