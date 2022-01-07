
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adreq {int dummy; } ;
struct TYPE_2__ {int * adh_remote; } ;


 int ADIST_CMD_KEEPALIVE ;
 int QUEUE_INSERT (struct adreq*,int *) ;
 struct adreq* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct adreq*,int ) ;
 TYPE_1__* adhost ;
 int adist_free_list ;
 int adist_free_list_lock ;
 int adist_remote_lock ;
 int adist_send_list ;
 int adr_next ;
 int adreq_fill (struct adreq*,int ,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pjdlog_debug (int,char*) ;
 int rw_rlock (int *) ;
 int rw_unlock (int *) ;

__attribute__((used)) static void
keepalive_send(void)
{
 struct adreq *adreq;

 rw_rlock(&adist_remote_lock);
 if (adhost->adh_remote == ((void*)0)) {
  rw_unlock(&adist_remote_lock);
  return;
 }
 rw_unlock(&adist_remote_lock);

 mtx_lock(&adist_free_list_lock);
 adreq = TAILQ_FIRST(&adist_free_list);
 if (adreq != ((void*)0))
  TAILQ_REMOVE(&adist_free_list, adreq, adr_next);
 mtx_unlock(&adist_free_list_lock);
 if (adreq == ((void*)0))
  return;

 adreq_fill(adreq, ADIST_CMD_KEEPALIVE, ((void*)0), 0);

 QUEUE_INSERT(adreq, &adist_send_list);

 pjdlog_debug(3, "keepalive_send: Request sent.");
}
