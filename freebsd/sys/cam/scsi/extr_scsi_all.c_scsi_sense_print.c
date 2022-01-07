
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ccb_scsiio {int dummy; } ;
struct cam_device {int dummy; } ;
typedef int str ;
typedef int FILE ;


 int SSS_FLAG_PRINT_COMMAND ;
 int fprintf (int *,char*,char*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int scsi_sense_sbuf (struct cam_device*,struct ccb_scsiio*,struct sbuf*,int ) ;

void
scsi_sense_print(struct cam_device *device, struct ccb_scsiio *csio,
   FILE *ofile)
{
 struct sbuf sb;
 char str[512];

 if ((device == ((void*)0)) || (csio == ((void*)0)) || (ofile == ((void*)0)))
  return;

 sbuf_new(&sb, str, sizeof(str), 0);

 scsi_sense_sbuf(device, csio, &sb, SSS_FLAG_PRINT_COMMAND);

 sbuf_finish(&sb);

 fprintf(ofile, "%s", sbuf_data(&sb));
}
