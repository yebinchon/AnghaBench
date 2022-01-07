
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct uni_restart_ack {int unrec; int restart; int connid; } ;


 int UNI_IE_CONNID ;
 int UNI_IE_RESTART ;
 int UNI_IE_UNREC ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_restart_ack(struct uni_restart_ack *m, struct unicx *cx)
{
 int ret = 0;

 ret |= uni_check_ie(UNI_IE_CONNID, (union uni_ieall *)&m->connid, cx);
 ret |= uni_check_ie(UNI_IE_RESTART, (union uni_ieall *)&m->restart, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
