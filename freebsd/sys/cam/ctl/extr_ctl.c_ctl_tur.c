
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct ctl_scsiio {int dummy; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_RETVAL_COMPLETE ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;

int
ctl_tur(struct ctl_scsiio *ctsio)
{

 CTL_DEBUG_PRINT(("ctl_tur\n"));

 ctl_set_success(ctsio);
 ctl_done((union ctl_io *)ctsio);

 return (CTL_RETVAL_COMPLETE);
}
