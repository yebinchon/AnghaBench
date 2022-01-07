
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zLine ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int out; } ;
typedef TYPE_1__ ShellState ;


 int raw_printf (int ,char*,char*,char*) ;
 int sqlite3_snprintf (int,char*,char*,int,...) ;
 int sqlite3_status64 (int,int*,int*,int) ;

__attribute__((used)) static void displayStatLine(
  ShellState *p,
  char *zLabel,
  char *zFormat,
  int iStatusCtrl,
  int bReset
){
  sqlite3_int64 iCur = -1;
  sqlite3_int64 iHiwtr = -1;
  int i, nPercent;
  char zLine[200];
  sqlite3_status64(iStatusCtrl, &iCur, &iHiwtr, bReset);
  for(i=0, nPercent=0; zFormat[i]; i++){
    if( zFormat[i]=='%' ) nPercent++;
  }
  if( nPercent>1 ){
    sqlite3_snprintf(sizeof(zLine), zLine, zFormat, iCur, iHiwtr);
  }else{
    sqlite3_snprintf(sizeof(zLine), zLine, zFormat, iHiwtr);
  }
  raw_printf(p->out, "%-36s %s\n", zLabel, zLine);
}
