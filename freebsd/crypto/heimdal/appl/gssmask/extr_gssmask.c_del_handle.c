
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle {scalar_t__ idx; int type; struct handle* next; int ptr; } ;
typedef scalar_t__ int32_t ;
typedef int gss_ctx_id_t ;
typedef int gss_cred_id_t ;
typedef int OM_uint32 ;


 int errx (int,char*) ;
 int free (struct handle*) ;
 int gss_delete_sec_context (int *,int *,int *) ;
 int gss_release_cred (int *,int *) ;



__attribute__((used)) static void
del_handle(struct handle **h, int32_t idx)
{
    OM_uint32 min_stat;

    if (idx == 0)
 return;

    while (*h) {
 if ((*h)->idx == idx) {
     struct handle *p = *h;
     *h = (*h)->next;
     switch(p->type) {
     case 129: {
  gss_ctx_id_t c = p->ptr;
  gss_delete_sec_context(&min_stat, &c, ((void*)0));
  break; }
     case 128: {
  gss_cred_id_t c = p->ptr;
  gss_release_cred(&min_stat, &c);
  break; }
     }
     free(p);
     return;
 }
 h = &((*h)->next);
    }
    errx(1, "tried to delete an unexisting handle");
}
