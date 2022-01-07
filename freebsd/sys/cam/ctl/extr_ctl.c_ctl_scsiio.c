
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; int * cdb; } ;
struct ctl_cmd_entry {int (* execute ) (struct ctl_scsiio*) ;} ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ABORT ;
 int CTL_RETVAL_COMPLETE ;
 int ctl_done (union ctl_io*) ;
 struct ctl_cmd_entry* ctl_get_cmd_entry (struct ctl_scsiio*,int *) ;
 int stub1 (struct ctl_scsiio*) ;

__attribute__((used)) static int
ctl_scsiio(struct ctl_scsiio *ctsio)
{
 int retval;
 const struct ctl_cmd_entry *entry;

 retval = CTL_RETVAL_COMPLETE;

 CTL_DEBUG_PRINT(("ctl_scsiio cdb[0]=%02X\n", ctsio->cdb[0]));

 entry = ctl_get_cmd_entry(ctsio, ((void*)0));





 if (ctsio->io_hdr.flags & CTL_FLAG_ABORT) {
  ctl_done((union ctl_io *)ctsio);
  goto bailout;
 }





 retval = entry->execute(ctsio);

bailout:
 return (retval);
}
