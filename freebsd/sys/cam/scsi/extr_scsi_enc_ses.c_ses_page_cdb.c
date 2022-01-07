
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char SesDiagPageCodes ;


 int CAM_DIR_IN ;
 char RECEIVE_DIAGNOSTIC ;
 char SEND_DIAGNOSTIC ;

__attribute__((used)) static void
ses_page_cdb(char *cdb, int bufsiz, SesDiagPageCodes pagenum, int dir)
{


 if (dir == CAM_DIR_IN) {
  cdb[0] = RECEIVE_DIAGNOSTIC;
  cdb[1] = 1;
  cdb[2] = pagenum;
 } else {
  cdb[0] = SEND_DIAGNOSTIC;
  cdb[1] = 0x10;
  cdb[2] = pagenum;
 }
 cdb[3] = bufsiz >> 8;
 cdb[4] = bufsiz & 0xff;
 cdb[5] = 0;
}
