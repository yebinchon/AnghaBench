
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_bst {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
struct acpi_bif {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
struct acpi_battinfo {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
typedef int * device_t ;
typedef int * devclass_t ;


 scalar_t__ ACPI_BATT_GET_INFO (int *,struct acpi_bst*) ;
 scalar_t__ ACPI_BATT_GET_STATUS (int *,struct acpi_bst*) ;
 int ACPI_BATT_STAT_CHARGING ;
 int ACPI_BATT_STAT_DISCHARG ;
 int ACPI_BATT_UNKNOWN ;
 scalar_t__ ACPI_BIF_UNITS_MA ;
 int ENXIO ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int acpi_battery_bif_valid (struct acpi_bst*) ;
 int acpi_battery_bst_valid (struct acpi_bst*) ;
 int acpi_reset_battinfo (struct acpi_bst*) ;
 int * devclass_find (char*) ;
 int * devclass_get_device (int *,int) ;
 int devclass_get_maxunit (int *) ;
 int free (struct acpi_bst*,int ) ;
 struct acpi_bst* malloc (int,int ,int) ;

int
acpi_battery_get_battinfo(device_t dev, struct acpi_battinfo *battinfo)
{
    int batt_stat, devcount, dev_idx, error, i;
    int total_cap, total_lfcap, total_min, valid_rate, valid_units;
    devclass_t batt_dc;
    device_t batt_dev;
    struct acpi_bst *bst;
    struct acpi_bif *bif;
    struct acpi_battinfo *bi;





    batt_dc = devclass_find("battery");
    if (batt_dc == ((void*)0))
 return (ENXIO);
    devcount = devclass_get_maxunit(batt_dc);
    if (devcount == 0)
 return (ENXIO);





    bst = malloc(devcount * sizeof(*bst), M_TEMP, M_WAITOK | M_ZERO);
    bi = malloc(devcount * sizeof(*bi), M_TEMP, M_WAITOK | M_ZERO);
    bif = malloc(sizeof(*bif), M_TEMP, M_WAITOK | M_ZERO);






    dev_idx = -1;
    batt_stat = valid_rate = valid_units = 0;
    total_cap = total_lfcap = 0;
    for (i = 0; i < devcount; i++) {

 acpi_reset_battinfo(&bi[i]);





 batt_dev = devclass_get_device(batt_dc, i);
 if (batt_dev == ((void*)0))
     continue;


 if (dev != ((void*)0) && dev == batt_dev)
     dev_idx = i;




 if (ACPI_BATT_GET_STATUS(batt_dev, &bst[i]) != 0 ||
     ACPI_BATT_GET_INFO(batt_dev, bif) != 0)
  continue;


 if (!acpi_battery_bst_valid(&bst[i]) ||
     !acpi_battery_bif_valid(bif))
     continue;





 valid_units++;
 if ((bst[i].state & ACPI_BATT_STAT_DISCHARG) != 0)
     bst[i].state &= ~ACPI_BATT_STAT_CHARGING;
 batt_stat |= bst[i].state;
 bi[i].state = bst[i].state;







 if (bif->units == ACPI_BIF_UNITS_MA && bif->dvol != 0 && dev == ((void*)0)) {
     bst[i].rate = (bst[i].rate * bif->dvol) / 1000;
     bst[i].cap = (bst[i].cap * bif->dvol) / 1000;
     bif->lfcap = (bif->lfcap * bif->dvol) / 1000;
 }






 if (!acpi_battery_bif_valid(bif))
     continue;






 if (bst[i].cap > bif->lfcap)
     bst[i].cap = bif->lfcap;


 bi[i].cap = (100 * bst[i].cap) / bif->lfcap;


 if (bi[i].cap != -1) {
     total_cap += bst[i].cap;
     total_lfcap += bif->lfcap;
 }
 if (bst[i].rate != ACPI_BATT_UNKNOWN &&
     (bst[i].state & ACPI_BATT_STAT_DISCHARG) != 0)
     valid_rate += bst[i].rate;
    }


    if (dev != ((void*)0) && dev_idx == -1) {
 error = ENXIO;
 goto out;
    }


    total_min = 0;
    for (i = 0; i < devcount; i++) {





 if (valid_rate > 0)
     bi[i].min = (60 * bst[i].cap) / valid_rate;
 else
     bi[i].min = 0;
 total_min += bi[i].min;
    }





    if (valid_units > 0) {
 if (dev == ((void*)0)) {
     battinfo->cap = (total_cap * 100) / total_lfcap;
     battinfo->min = total_min;
     battinfo->state = batt_stat;
     battinfo->rate = valid_rate;
 } else {
     battinfo->cap = bi[dev_idx].cap;
     battinfo->min = bi[dev_idx].min;
     battinfo->state = bi[dev_idx].state;
     battinfo->rate = bst[dev_idx].rate;
 }





 if (valid_rate == 0 || (battinfo->state & ACPI_BATT_STAT_CHARGING))
     battinfo->min = -1;
    } else
 acpi_reset_battinfo(battinfo);

    error = 0;

out:
    if (bi)
 free(bi, M_TEMP);
    if (bif)
 free(bif, M_TEMP);
    if (bst)
 free(bst, M_TEMP);
    return (error);
}
