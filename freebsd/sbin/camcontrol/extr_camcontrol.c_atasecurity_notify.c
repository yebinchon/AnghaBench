
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct ata_security_password {int ctrl; int password; } ;
struct ata_cmd {scalar_t__ command; } ;
typedef int cmd ;


 int ATA_SECURITY_LEVEL_MAXIMUM ;
 int ATA_SECURITY_PASSWORD_MASTER ;
 scalar_t__ ATA_SECURITY_SET_PASSWORD ;
 char* ata_op_string (struct ata_cmd*) ;
 int bzero (struct ata_cmd*,int) ;
 int printf (char*,...) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void
atasecurity_notify(u_int8_t command, struct ata_security_password *pwd)
{
 struct ata_cmd cmd;

 bzero(&cmd, sizeof(cmd));
 cmd.command = command;
 printf("Issuing %s", ata_op_string(&cmd));

 if (pwd != ((void*)0)) {
  char pass[sizeof(pwd->password)+1];


  pass[sizeof(pwd->password)] = '\0';
  strncpy(pass, pwd->password, sizeof(pwd->password));
  printf(" password='%s', user='%s'",
   pass,
   (pwd->ctrl & ATA_SECURITY_PASSWORD_MASTER) ?
   "master" : "user");

  if (command == ATA_SECURITY_SET_PASSWORD) {
   printf(", mode='%s'",
          (pwd->ctrl & ATA_SECURITY_LEVEL_MAXIMUM) ?
          "maximum" : "high");
  }
 }

 printf("\n");
}
