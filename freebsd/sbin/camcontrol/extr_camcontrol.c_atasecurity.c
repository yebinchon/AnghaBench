
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct cam_device {char* device_name; int dev_unit_num; } ;
struct ata_security_password {int ctrl; int revision; int password; } ;
struct TYPE_2__ {int command1; } ;
struct ata_params {int security_status; int master_passwd_revision; int enhanced_erase_time; int erase_time; TYPE_1__ support; } ;
typedef int pwd ;






 int ATA_SECURITY_ACTION_PRINT ;
 int ATA_SECURITY_ACTION_SET_PASSWORD ;

 int ATA_SECURITY_ENABLED ;
 int ATA_SECURITY_ENH_SUPP ;
 int ATA_SECURITY_ERASE_ENHANCED ;
 int ATA_SECURITY_LEVEL_HIGH ;
 int ATA_SECURITY_LEVEL_MAXIMUM ;
 int ATA_SECURITY_LOCKED ;
 int ATA_SECURITY_PASSWORD_MASTER ;
 int ATA_SECURITY_PASSWORD_USER ;
 int ATA_SUPPORT_SECURITY ;
 int ata_do_identify (struct cam_device*,int,int,union ccb*,struct ata_params**) ;
 int ata_getpwd (int ,int,int) ;
 int ata_print_ident (struct ata_params*) ;
 int atasecurity_disable (struct cam_device*,union ccb*,int,int,struct ata_security_password*,int) ;
 int atasecurity_erase (struct cam_device*,union ccb*,int,int,int,struct ata_security_password*,int) ;
 scalar_t__ atasecurity_erase_confirm (struct cam_device*,struct ata_params*) ;
 int atasecurity_erase_timeout_msecs (int ) ;
 int atasecurity_freeze (struct cam_device*,union ccb*,int,int,int) ;
 int atasecurity_print (struct ata_params*) ;
 int atasecurity_set_password (struct cam_device*,union ccb*,int,int,struct ata_security_password*,int) ;
 int atasecurity_unlock (struct cam_device*,union ccb*,int,int,struct ata_security_password*,int) ;
 int atoi (int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int camxferrate (struct cam_device*) ;
 int free (struct ata_params*) ;
 int getopt (int,char**,char*) ;
 int memset (struct ata_security_password*,int ,int) ;
 int optarg ;
 int printf (char*,char*,int ) ;
 int strcasecmp (int ,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
atasecurity(struct cam_device *device, int retry_count, int timeout,
     int argc, char **argv, char *combinedopt)
{
 union ccb *ccb;
 struct ata_params *ident_buf;
 int error, confirm, quiet, c, action, actions, setpwd;
 int security_enabled, erase_timeout, pwdsize;
 struct ata_security_password pwd;

 actions = 0;
 setpwd = 0;
 erase_timeout = 0;
 confirm = 0;
 quiet = 0;

 memset(&pwd, 0, sizeof(pwd));


 action = ATA_SECURITY_ACTION_PRINT;


 pwd.ctrl |= ATA_SECURITY_PASSWORD_MASTER;
 pwdsize = sizeof(pwd.password);

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c){
  case 'f':
   action = 129;
   actions++;
   break;

  case 'U':
   if (strcasecmp(optarg, "user") == 0) {
    pwd.ctrl |= ATA_SECURITY_PASSWORD_USER;
    pwd.ctrl &= ~ATA_SECURITY_PASSWORD_MASTER;
   } else if (strcasecmp(optarg, "master") == 0) {
    pwd.ctrl |= ATA_SECURITY_PASSWORD_MASTER;
    pwd.ctrl &= ~ATA_SECURITY_PASSWORD_USER;
   } else {
    warnx("-U argument '%s' is invalid (must be "
          "'user' or 'master')", optarg);
    return (1);
   }
   break;

  case 'l':
   if (strcasecmp(optarg, "high") == 0) {
    pwd.ctrl |= ATA_SECURITY_LEVEL_HIGH;
    pwd.ctrl &= ~ATA_SECURITY_LEVEL_MAXIMUM;
   } else if (strcasecmp(optarg, "maximum") == 0) {
    pwd.ctrl |= ATA_SECURITY_LEVEL_MAXIMUM;
    pwd.ctrl &= ~ATA_SECURITY_LEVEL_HIGH;
   } else {
    warnx("-l argument '%s' is unknown (must be "
          "'high' or 'maximum')", optarg);
    return (1);
   }
   break;

  case 'k':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   action = 128;
   actions++;
   break;

  case 'd':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   action = 132;
   actions++;
   break;

  case 'e':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   action = 131;
   actions++;
   break;

  case 'h':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   pwd.ctrl |= ATA_SECURITY_ERASE_ENHANCED;
   action = 130;
   actions++;
   break;

  case 's':
   if (ata_getpwd(pwd.password, pwdsize, c) != 0)
    return (1);
   setpwd = 1;
   if (action == ATA_SECURITY_ACTION_PRINT)
    action = ATA_SECURITY_ACTION_SET_PASSWORD;




   break;

  case 'y':
   confirm++;
   break;

  case 'q':
   quiet++;
   break;

  case 'T':
   erase_timeout = atoi(optarg) * 1000;
   break;
  }
 }

 if (actions > 1) {
  warnx("too many security actions specified");
  return (1);
 }

 if ((ccb = cam_getccb(device)) == ((void*)0)) {
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

 if (action == ATA_SECURITY_ACTION_PRINT) {
  atasecurity_print(ident_buf);
  free(ident_buf);
  cam_freeccb(ccb);
  return (0);
 }

 if ((ident_buf->support.command1 & ATA_SUPPORT_SECURITY) == 0) {
  warnx("Security not supported");
  free(ident_buf);
  cam_freeccb(ccb);
  return (1);
 }


 timeout = timeout ? timeout : 15 * 1000;

 security_enabled = ident_buf->security_status & ATA_SECURITY_ENABLED;


 if (setpwd == 1) {

  if (confirm == 0 &&
      (action == 130 ||
      action == 131) &&
      atasecurity_erase_confirm(device, ident_buf) == 0) {
   cam_freeccb(ccb);
   free(ident_buf);
   return (error);
  }

  if (pwd.ctrl & ATA_SECURITY_PASSWORD_MASTER) {
   pwd.revision = ident_buf->master_passwd_revision;
   if (pwd.revision != 0 && pwd.revision != 0xfff &&
       --pwd.revision == 0) {
    pwd.revision = 0xfffe;
   }
  }
  error = atasecurity_set_password(device, ccb, retry_count,
       timeout, &pwd, quiet);
  if (error != 0) {
   cam_freeccb(ccb);
   free(ident_buf);
   return (error);
  }
  security_enabled = 1;
 }

 switch(action) {
 case 129:
  error = atasecurity_freeze(device, ccb, retry_count,
        timeout, quiet);
  break;

 case 128:
  if (security_enabled) {
   if (ident_buf->security_status & ATA_SECURITY_LOCKED) {
    error = atasecurity_unlock(device, ccb,
     retry_count, timeout, &pwd, quiet);
   } else {
    warnx("Can't unlock, drive is not locked");
    error = 1;
   }
  } else {
   warnx("Can't unlock, security is disabled");
   error = 1;
  }
  break;

 case 132:
  if (security_enabled) {

   if (ident_buf->security_status & ATA_SECURITY_LOCKED) {
    error = atasecurity_unlock(device, ccb,
          retry_count,
          timeout,
          &pwd,
          quiet);
   }

   if (error == 0) {
    error = atasecurity_disable(device,
           ccb,
           retry_count,
           timeout,
           &pwd,
           quiet);
   }
  } else {
   warnx("Can't disable security (already disabled)");
   error = 1;
  }
  break;

 case 131:
  if (security_enabled) {
   if (erase_timeout == 0) {
    erase_timeout = atasecurity_erase_timeout_msecs(
        ident_buf->erase_time);
   }

   error = atasecurity_erase(device, ccb, retry_count,
       timeout, erase_timeout, &pwd, quiet);
  } else {
   warnx("Can't secure erase (security is disabled)");
   error = 1;
  }
  break;

 case 130:
  if (security_enabled) {
   if (ident_buf->security_status & ATA_SECURITY_ENH_SUPP) {
    if (erase_timeout == 0) {
     erase_timeout =
         atasecurity_erase_timeout_msecs(
      ident_buf->enhanced_erase_time);
    }

    error = atasecurity_erase(device, ccb,
         retry_count, timeout,
         erase_timeout, &pwd,
         quiet);
   } else {
    warnx("Enhanced erase is not supported");
    error = 1;
   }
  } else {
   warnx("Can't secure erase (enhanced), "
         "(security is disabled)");
   error = 1;
  }
  break;
 }

 cam_freeccb(ccb);
 free(ident_buf);

 return (error);
}
