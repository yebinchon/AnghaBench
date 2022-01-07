
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adh_role; int adh_remoteaddr; int * adh_remote; } ;


 scalar_t__ ADIST_ROLE_SENDER ;
 int PJDLOG_ASSERT (int) ;
 TYPE_1__* adhost ;
 int adist_remote_lock ;
 int pjdlog_debug (int,char*,int ) ;
 int pjdlog_info (char*,int ) ;
 int rw_rlock (int *) ;
 int rw_unlock (int *) ;
 scalar_t__ sender_connect () ;

__attribute__((used)) static void
guard_check_connection(void)
{

 PJDLOG_ASSERT(adhost->adh_role == ADIST_ROLE_SENDER);

 rw_rlock(&adist_remote_lock);
 if (adhost->adh_remote != ((void*)0)) {
  rw_unlock(&adist_remote_lock);
  pjdlog_debug(3, "remote_guard: Connection to %s is ok.",
      adhost->adh_remoteaddr);
  return;
 }





 rw_unlock(&adist_remote_lock);
 pjdlog_debug(1, "remote_guard: Reconnecting to %s.",
     adhost->adh_remoteaddr);
 if (sender_connect() == 0) {
  pjdlog_info("Successfully reconnected to %s.",
      adhost->adh_remoteaddr);
 } else {
  pjdlog_debug(1, "remote_guard: Reconnect to %s failed.",
      adhost->adh_remoteaddr);
 }
}
