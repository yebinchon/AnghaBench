
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int used; size_t desc; scalar_t__ len; int token_q; struct TYPE_7__* data; } ;
typedef TYPE_1__ au_record_t ;


 int ENOMEM ;
 int LIST_EMPTY (int *) ;
 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 size_t MAX_AUDIT_RECORDS ;
 int MAX_AUDIT_RECORD_SIZE ;
 int TAILQ_INIT (int *) ;
 int au_rec_q ;
 int audit_free_q ;
 size_t audit_rec_count ;
 int errno ;
 int free (TYPE_1__*) ;
 void* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex ;
 TYPE_1__** open_desc_table ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
au_open(void)
{
 au_record_t *rec = ((void*)0);





 if (audit_rec_count == 0)
  LIST_INIT(&audit_free_q);





 if (!LIST_EMPTY(&audit_free_q)) {
  rec = LIST_FIRST(&audit_free_q);
  rec->used = 1;
  LIST_REMOVE(rec, au_rec_q);
 }





 if (rec == ((void*)0)) {



  rec = malloc (sizeof(au_record_t));
  if (rec == ((void*)0))
   return (-1);

  rec->data = malloc (MAX_AUDIT_RECORD_SIZE * sizeof(u_char));
  if (rec->data == ((void*)0)) {
   free(rec);
   errno = ENOMEM;
   return (-1);
  }





  if (audit_rec_count == MAX_AUDIT_RECORDS) {



   free(rec->data);
   free(rec);


   errno = ENOMEM;
   return (-1);
  }
  rec->desc = audit_rec_count;
  open_desc_table[audit_rec_count] = rec;
  audit_rec_count++;





 }

 memset(rec->data, 0, MAX_AUDIT_RECORD_SIZE);

 TAILQ_INIT(&rec->token_q);
 rec->len = 0;
 rec->used = 1;

 return (rec->desc);
}
