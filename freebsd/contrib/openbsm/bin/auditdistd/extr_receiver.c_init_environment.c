
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreq {int dummy; } ;


 scalar_t__ ADIST_BUF_SIZE ;
 unsigned int ADIST_QUEUE_SIZE ;
 int EX_TEMPFAIL ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct adreq*,int ) ;
 int adist_disk_list ;
 int adist_disk_list_cond ;
 int adist_disk_list_lock ;
 int adist_free_list ;
 int adist_free_list_cond ;
 int adist_free_list_lock ;
 int adist_send_list ;
 int adist_send_list_cond ;
 int adist_send_list_lock ;
 int adr_next ;
 int adreq_clear (struct adreq*) ;
 int cv_init (int *) ;
 struct adreq* malloc (scalar_t__) ;
 int mtx_init (int *) ;
 int pjdlog_exitx (int ,char*,scalar_t__) ;

__attribute__((used)) static void
init_environment(void)
{
 struct adreq *adreq;
 unsigned int ii;

 TAILQ_INIT(&adist_free_list);
 mtx_init(&adist_free_list_lock);
 cv_init(&adist_free_list_cond);
 TAILQ_INIT(&adist_disk_list);
 mtx_init(&adist_disk_list_lock);
 cv_init(&adist_disk_list_cond);
 TAILQ_INIT(&adist_send_list);
 mtx_init(&adist_send_list_lock);
 cv_init(&adist_send_list_cond);

 for (ii = 0; ii < ADIST_QUEUE_SIZE; ii++) {
  adreq = malloc(sizeof(*adreq) + ADIST_BUF_SIZE);
  if (adreq == ((void*)0)) {
   pjdlog_exitx(EX_TEMPFAIL,
       "Unable to allocate %zu bytes of memory for adreq object.",
       sizeof(*adreq) + ADIST_BUF_SIZE);
  }
  adreq_clear(adreq);
  TAILQ_INSERT_TAIL(&adist_free_list, adreq, adr_next);
 }
}
