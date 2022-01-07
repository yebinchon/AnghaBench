
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_9__ {int iPgOne; int iMark; } ;
struct TYPE_7__ {int (* xWrite ) (TYPE_2__*,unsigned char*,int,int ) ;} ;
typedef TYPE_3__ ApndFile ;


 int APND_MARK_PREFIX ;
 int APND_MARK_PREFIX_SZ ;
 int APND_MARK_SIZE ;
 int memcpy (unsigned char*,int ,int) ;
 int stub1 (TYPE_2__*,unsigned char*,int,int ) ;

__attribute__((used)) static int apndWriteMark(ApndFile *p, sqlite3_file *pFile){
  int i;
  unsigned char a[APND_MARK_SIZE];
  memcpy(a, APND_MARK_PREFIX, APND_MARK_PREFIX_SZ);
  for(i=0; i<8; i++){
    a[APND_MARK_PREFIX_SZ+i] = (p->iPgOne >> (56 - i*8)) & 0xff;
  }
  return pFile->pMethods->xWrite(pFile, a, APND_MARK_SIZE, p->iMark);
}
