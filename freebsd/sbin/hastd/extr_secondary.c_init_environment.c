
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hio {int * hio_data; } ;


 int EX_TEMPFAIL ;
 unsigned int HAST_HIO_MAX ;
 int MAXPHYS ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct hio*,int ) ;
 int cv_init (int *) ;
 int hio_clear (struct hio*) ;
 int hio_disk_list ;
 int hio_disk_list_cond ;
 int hio_disk_list_lock ;
 int hio_free_list ;
 int hio_free_list_cond ;
 int hio_free_list_lock ;
 int hio_free_list_size ;
 int hio_next ;
 int hio_send_list ;
 int hio_send_list_cond ;
 int hio_send_list_lock ;
 void* malloc (int) ;
 int mtx_init (int *) ;
 int pjdlog_exitx (int ,char*,size_t) ;

__attribute__((used)) static void
init_environment(void)
{
 struct hio *hio;
 unsigned int ii;




 TAILQ_INIT(&hio_free_list);
 mtx_init(&hio_free_list_lock);
 cv_init(&hio_free_list_cond);
 TAILQ_INIT(&hio_disk_list);
 mtx_init(&hio_disk_list_lock);
 cv_init(&hio_disk_list_cond);
 TAILQ_INIT(&hio_send_list);
 mtx_init(&hio_send_list_lock);
 cv_init(&hio_send_list_cond);




 for (ii = 0; ii < HAST_HIO_MAX; ii++) {
  hio = malloc(sizeof(*hio));
  if (hio == ((void*)0)) {
   pjdlog_exitx(EX_TEMPFAIL,
       "Unable to allocate memory (%zu bytes) for hio request.",
       sizeof(*hio));
  }
  hio->hio_data = malloc(MAXPHYS);
  if (hio->hio_data == ((void*)0)) {
   pjdlog_exitx(EX_TEMPFAIL,
       "Unable to allocate memory (%zu bytes) for gctl_data.",
       (size_t)MAXPHYS);
  }
  hio_clear(hio);
  TAILQ_INSERT_HEAD(&hio_free_list, hio, hio_next);
  hio_free_list_size++;
 }
}
