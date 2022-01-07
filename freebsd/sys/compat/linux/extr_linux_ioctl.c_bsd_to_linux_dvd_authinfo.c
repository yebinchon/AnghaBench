
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dvd_authinfo {int rpc_scheme; int region; int user_rsts; int vend_rsts; int reg_type; int asf; int cgms; int cp_sec; int cpm; int keychal; int agid; } ;
struct TYPE_14__ {int rpc_scheme; int region_mask; int ucca; int vra; int type; } ;
struct TYPE_13__ {int asf; } ;
struct TYPE_12__ {int cgms; int cp_sec; int cpm; int title_key; } ;
struct TYPE_11__ {int chal; } ;
struct TYPE_10__ {int key; } ;
struct TYPE_9__ {int agid; } ;
struct TYPE_15__ {int type; TYPE_6__ lrpcs; TYPE_5__ lsasf; TYPE_4__ lstk; TYPE_3__ lsc; TYPE_2__ lsk; TYPE_1__ lsa; } ;
typedef TYPE_7__ l_dvd_authinfo ;


 int EINVAL ;
 int LINUX_DVD_AUTH_ESTABLISHED ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
bsd_to_linux_dvd_authinfo(struct dvd_authinfo *bp, l_dvd_authinfo *lp)
{
 switch (lp->type) {
 case 133:
  lp->lsa.agid = bp->agid;
  break;
 case 137:
  lp->type = 130;
  break;
 case 130:
  memcpy(lp->lsk.key, bp->keychal, sizeof(lp->lsk.key));
  break;
 case 131:
  memcpy(lp->lsc.chal, bp->keychal, sizeof(lp->lsc.chal));
  break;
 case 136:
  lp->type = LINUX_DVD_AUTH_ESTABLISHED;
  break;
 case 128:
  memcpy(lp->lstk.title_key, bp->keychal,
      sizeof(lp->lstk.title_key));
  lp->lstk.cpm = bp->cpm;
  lp->lstk.cp_sec = bp->cp_sec;
  lp->lstk.cgms = bp->cgms;
  break;
 case 132:
  lp->lsasf.asf = bp->asf;
  break;
 case 134:
  break;
 case 129:
  lp->lrpcs.type = bp->reg_type;
  lp->lrpcs.vra = bp->vend_rsts;
  lp->lrpcs.ucca = bp->user_rsts;
  lp->lrpcs.region_mask = bp->region;
  lp->lrpcs.rpc_scheme = bp->rpc_scheme;
  break;
 case 135:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
