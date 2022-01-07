
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adh_reset; char* adh_trail_name; int adh_remoteaddr; scalar_t__ adh_trail_offset; int * adh_remote; } ;


 int QUEUE_CONCAT2 (int *,int *,int *) ;
 TYPE_1__* adhost ;
 int adist_free_list ;
 int adist_recv_list ;
 int adist_remote_lock ;
 int adist_remote_mtx ;
 int adist_send_list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pjdlog_debug (int,char*,int ) ;
 int pjdlog_warning (char*,int ) ;
 int proto_close (int *) ;
 int rw_unlock (int *) ;
 int rw_wlock (int *) ;

__attribute__((used)) static void
sender_disconnect(void)
{

 rw_wlock(&adist_remote_lock);




 if (adhost->adh_remote == ((void*)0)) {
  rw_unlock(&adist_remote_lock);
  return;
 }
 pjdlog_debug(2, "Closing connection to %s.", adhost->adh_remoteaddr);
 proto_close(adhost->adh_remote);
 mtx_lock(&adist_remote_mtx);
 adhost->adh_remote = ((void*)0);
 adhost->adh_reset = 1;
 adhost->adh_trail_name[0] = '\0';
 adhost->adh_trail_offset = 0;
 mtx_unlock(&adist_remote_mtx);
 rw_unlock(&adist_remote_lock);

 pjdlog_warning("Disconnected from %s.", adhost->adh_remoteaddr);


 QUEUE_CONCAT2(&adist_free_list, &adist_send_list, &adist_recv_list);
}
