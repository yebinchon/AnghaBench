
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct dvd_authinfo {int region; int format; int agid; int lba; int keychal; } ;
struct TYPE_18__ {int pdrc; } ;
struct TYPE_17__ {int agid; } ;
struct TYPE_16__ {int agid; } ;
struct TYPE_15__ {int lba; int agid; } ;
struct TYPE_14__ {int key; int agid; } ;
struct TYPE_13__ {int agid; } ;
struct TYPE_12__ {int agid; } ;
struct TYPE_11__ {int chal; int agid; } ;
struct TYPE_19__ {int type; TYPE_8__ hrpcs; TYPE_7__ lsa; TYPE_6__ lsasf; TYPE_5__ lstk; TYPE_4__ hsk; TYPE_3__ lsc; TYPE_2__ lsk; TYPE_1__ hsc; } ;
typedef TYPE_9__ l_dvd_authinfo ;


 int DVDIOCREPORTKEY ;
 int DVDIOCSENDKEY ;
 int DVD_INVALIDATE_AGID ;
 int DVD_REPORT_AGID ;
 int DVD_REPORT_ASF ;
 int DVD_REPORT_CHALLENGE ;
 int DVD_REPORT_KEY1 ;
 int DVD_REPORT_RPC ;
 int DVD_REPORT_TITLE_KEY ;
 int DVD_SEND_CHALLENGE ;
 int DVD_SEND_KEY2 ;
 int DVD_SEND_RPC ;
 int EINVAL ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
linux_to_bsd_dvd_authinfo(l_dvd_authinfo *lp, int *bcode,
    struct dvd_authinfo *bp)
{
 switch (lp->type) {
 case 133:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_AGID;
  bp->agid = lp->lsa.agid;
  break;
 case 137:
  *bcode = DVDIOCSENDKEY;
  bp->format = DVD_SEND_CHALLENGE;
  bp->agid = lp->hsc.agid;
  memcpy(bp->keychal, lp->hsc.chal, 10);
  break;
 case 130:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_KEY1;
  bp->agid = lp->lsk.agid;
  break;
 case 131:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_CHALLENGE;
  bp->agid = lp->lsc.agid;
  break;
 case 136:
  *bcode = DVDIOCSENDKEY;
  bp->format = DVD_SEND_KEY2;
  bp->agid = lp->hsk.agid;
  memcpy(bp->keychal, lp->hsk.key, 5);
  break;
 case 128:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_TITLE_KEY;
  bp->agid = lp->lstk.agid;
  bp->lba = lp->lstk.lba;
  break;
 case 132:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_ASF;
  bp->agid = lp->lsasf.agid;
  break;
 case 134:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_INVALIDATE_AGID;
  bp->agid = lp->lsa.agid;
  break;
 case 129:
  *bcode = DVDIOCREPORTKEY;
  bp->format = DVD_REPORT_RPC;
  break;
 case 135:
  *bcode = DVDIOCSENDKEY;
  bp->format = DVD_SEND_RPC;
  bp->region = lp->hrpcs.pdrc;
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
