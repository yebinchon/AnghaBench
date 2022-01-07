
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volume_tag {char* vif; int vsn; } ;
struct changer_voltag {char* cv_volid; int cv_serial; } ;


 int CH_VOLTAG_MAXLEN ;
 int scsi_2btoul (int ) ;

__attribute__((used)) static void
copy_voltag(struct changer_voltag *uvoltag, struct volume_tag *voltag)
{
 int i;
 for (i=0; i<CH_VOLTAG_MAXLEN; i++) {
  char c = voltag->vif[i];
  if (c && c != ' ')
   uvoltag->cv_volid[i] = c;
         else
   break;
 }
 uvoltag->cv_serial = scsi_2btoul(voltag->vsn);
}
