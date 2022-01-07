
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {int len; int buf; } ;
struct address_cache {struct address_cache* ac_next; struct address_cache* ac_uaddr; struct address_cache* ac_taddr; struct address_cache* buf; struct address_cache* ac_netid; struct address_cache* ac_host; } ;


 int cachesize ;
 int free (struct address_cache*) ;
 struct address_cache* front ;
 int memcmp (struct address_cache*,int ,int ) ;

__attribute__((used)) static void
delete_cache(struct netbuf *addr)
{
 struct address_cache *cptr, *prevptr = ((void*)0);


 for (cptr = front; cptr != ((void*)0); cptr = cptr->ac_next) {
  if (!memcmp(cptr->ac_taddr->buf, addr->buf, addr->len)) {
   free(cptr->ac_host);
   free(cptr->ac_netid);
   free(cptr->ac_taddr->buf);
   free(cptr->ac_taddr);
   free(cptr->ac_uaddr);
   if (prevptr)
    prevptr->ac_next = cptr->ac_next;
   else
    front = cptr->ac_next;
   free(cptr);
   cachesize--;
   break;
  }
  prevptr = cptr;
 }
}
