
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef scalar_t__ u_int64_t ;
struct ccb_getdev {int dummy; } ;
struct cam_device {char* device_name; int dev_unit_num; } ;
struct ata_set_max_pwd {int password; } ;
struct TYPE_2__ {int command1; int command2; } ;
struct ata_params {TYPE_1__ support; } ;
typedef int pwd ;




 int ATA_HPA_ACTION_PRINT ;



 int ATA_SUPPORT_ADDRESS48 ;
 int ATA_SUPPORT_MAXSECURITY ;
 int ATA_SUPPORT_PROTECTED ;
 int ata_do_identify (struct cam_device*,int,int,union ccb*,struct ata_params**) ;
 int ata_getpwd (int ,int,int) ;
 int ata_print_ident (struct ata_params*) ;
 int ata_read_native_max (struct cam_device*,int,int,union ccb*,struct ata_params*,scalar_t__*) ;
 int atahpa_freeze_lock (struct cam_device*,int,int,union ccb*,int) ;
 int atahpa_lock (struct cam_device*,int,int,union ccb*,int) ;
 int atahpa_password (struct cam_device*,int,int,union ccb*,int,struct ata_set_max_pwd*) ;
 int atahpa_print (struct ata_params*,scalar_t__,int) ;
 int atahpa_set_confirm (struct cam_device*,struct ata_params*,scalar_t__,int) ;
 int atahpa_set_max (struct cam_device*,int,int,union ccb*,int,scalar_t__,int) ;
 int atahpa_unlock (struct cam_device*,int,int,union ccb*,int,struct ata_set_max_pwd*) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int camxferrate (struct cam_device*) ;
 int errx (int,char*) ;
 int free (struct ata_params*) ;
 scalar_t__ get_cgd (struct cam_device*,struct ccb_getdev*) ;
 int getopt (int,char**,char*) ;
 int memset (struct ata_set_max_pwd*,int ,int) ;
 int optarg ;
 int printf (char*,...) ;
 int reprobe (struct cam_device*) ;
 scalar_t__ strtoumax (int ,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static int
atahpa(struct cam_device *device, int retry_count, int timeout,
       int argc, char **argv, char *combinedopt)
{
 union ccb *ccb;
 struct ata_params *ident_buf;
 struct ccb_getdev cgd;
 struct ata_set_max_pwd pwd;
 int error, confirm, quiet, c, action, actions, persist;
 int security, is48bit, pwdsize;
 u_int64_t hpasize, maxsize;

 actions = 0;
 confirm = 0;
 quiet = 0;
 maxsize = 0;
 persist = 0;
 security = 0;

 memset(&pwd, 0, sizeof(pwd));


 action = ATA_HPA_ACTION_PRINT;
 pwdsize = sizeof(pwd.password);

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c){
  case 's':
   action = 130;
   maxsize = strtoumax(optarg, ((void*)0), 0);
   actions++;
   break;

  case 'p':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   action = 129;
   security = 1;
   actions++;
   break;

  case 'l':
   action = 131;
   security = 1;
   actions++;
   break;

  case 'U':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   action = 128;
   security = 1;
   actions++;
   break;

  case 'f':
   action = 132;
   security = 1;
   actions++;
   break;

  case 'P':
   persist = 1;
   break;

  case 'y':
   confirm++;
   break;

  case 'q':
   quiet++;
   break;
  }
 }

 if (actions > 1) {
  warnx("too many hpa actions specified");
  return (1);
 }

 if (get_cgd(device, &cgd) != 0) {
  warnx("couldn't get CGD");
  return (1);
 }

 ccb = cam_getccb(device);
 if (ccb == ((void*)0)) {
  warnx("couldn't allocate CCB");
  return (1);
 }

 error = ata_do_identify(device, retry_count, timeout, ccb, &ident_buf);
 if (error != 0) {
  cam_freeccb(ccb);
  return (1);
 }

 if (quiet == 0) {
  printf("%s%d: ", device->device_name, device->dev_unit_num);
  ata_print_ident(ident_buf);
  camxferrate(device);
 }

 if (action == ATA_HPA_ACTION_PRINT) {
  hpasize = 0;
  if (ident_buf->support.command1 & ATA_SUPPORT_PROTECTED)
   ata_read_native_max(device, retry_count, timeout, ccb,
        ident_buf, &hpasize);
  atahpa_print(ident_buf, hpasize, 1);

  cam_freeccb(ccb);
  free(ident_buf);
  return (error);
 }

 if (!(ident_buf->support.command1 & ATA_SUPPORT_PROTECTED)) {
  warnx("HPA is not supported by this device");
  cam_freeccb(ccb);
  free(ident_buf);
  return (1);
 }

 if (security && !(ident_buf->support.command2 & ATA_SUPPORT_MAXSECURITY)) {
  warnx("HPA Security is not supported by this device");
  cam_freeccb(ccb);
  free(ident_buf);
  return (1);
 }

 is48bit = ident_buf->support.command2 & ATA_SUPPORT_ADDRESS48;






 switch(action) {
 case 130:
  if (confirm == 0 &&
      atahpa_set_confirm(device, ident_buf, maxsize,
      persist) == 0) {
   cam_freeccb(ccb);
   free(ident_buf);
   return (1);
  }

  error = ata_read_native_max(device, retry_count, timeout,
         ccb, ident_buf, &hpasize);
  if (error == 0) {
   error = atahpa_set_max(device, retry_count, timeout,
            ccb, is48bit, maxsize, persist);
   if (error == 0) {
    if (quiet == 0) {

     error = ata_do_identify(device,
         retry_count, timeout, ccb,
         &ident_buf);
     atahpa_print(ident_buf, hpasize, 1);
    }

    reprobe(device);
   }
  }
  break;

 case 129:
  error = atahpa_password(device, retry_count, timeout,
     ccb, is48bit, &pwd);
  if (error == 0 && quiet == 0)
   printf("HPA password has been set\n");
  break;

 case 131:
  error = atahpa_lock(device, retry_count, timeout,
        ccb, is48bit);
  if (error == 0 && quiet == 0)
   printf("HPA has been locked\n");
  break;

 case 128:
  error = atahpa_unlock(device, retry_count, timeout,
          ccb, is48bit, &pwd);
  if (error == 0 && quiet == 0)
   printf("HPA has been unlocked\n");
  break;

 case 132:
  error = atahpa_freeze_lock(device, retry_count, timeout,
        ccb, is48bit);
  if (error == 0 && quiet == 0)
   printf("HPA has been frozen\n");
  break;

 default:
  errx(1, "Option currently not supported");
 }

 cam_freeccb(ccb);
 free(ident_buf);

 return (error);
}
