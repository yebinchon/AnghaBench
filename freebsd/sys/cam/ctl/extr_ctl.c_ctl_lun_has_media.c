
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ua_all; int ua_set; int ua_type; } ;
struct TYPE_6__ {int initid; int targ_port; int targ_mapped_lun; int targ_lun; } ;
struct TYPE_7__ {TYPE_2__ nexus; int msg_type; } ;
union ctl_ha_msg {TYPE_4__ ua; TYPE_3__ hdr; } ;
struct ctl_lun {int flags; int lun; TYPE_1__* ctl_softc; int lun_lock; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;
struct TYPE_5__ {scalar_t__ ha_mode; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_MODE_XFER ;
 int CTL_LUN_EJECTED ;
 int CTL_LUN_NO_MEDIA ;
 int CTL_LUN_REMOVABLE ;
 int CTL_MSG_UA ;
 int CTL_UA_MEDIUM_CHANGE ;
 int M_WAITOK ;
 int bzero (TYPE_4__*,int) ;
 int ctl_est_ua_all (struct ctl_lun*,int,int ) ;
 int ctl_ha_msg_send (int ,union ctl_ha_msg*,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_lun_has_media(struct ctl_be_lun *be_lun)
{
 struct ctl_lun *lun = (struct ctl_lun *)be_lun->ctl_lun;
 union ctl_ha_msg msg;

 mtx_lock(&lun->lun_lock);
 lun->flags &= ~(CTL_LUN_NO_MEDIA | CTL_LUN_EJECTED);
 if (lun->flags & CTL_LUN_REMOVABLE)
  ctl_est_ua_all(lun, -1, CTL_UA_MEDIUM_CHANGE);
 mtx_unlock(&lun->lun_lock);
 if ((lun->flags & CTL_LUN_REMOVABLE) &&
     lun->ctl_softc->ha_mode == CTL_HA_MODE_XFER) {
  bzero(&msg.ua, sizeof(msg.ua));
  msg.hdr.msg_type = CTL_MSG_UA;
  msg.hdr.nexus.initid = -1;
  msg.hdr.nexus.targ_port = -1;
  msg.hdr.nexus.targ_lun = lun->lun;
  msg.hdr.nexus.targ_mapped_lun = lun->lun;
  msg.ua.ua_all = 1;
  msg.ua.ua_set = 1;
  msg.ua.ua_type = CTL_UA_MEDIUM_CHANGE;
  ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg, sizeof(msg.ua),
      M_WAITOK);
 }
 return (0);
}
