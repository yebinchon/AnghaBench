
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsg_list {struct nlmsg_list* nlm_next; struct nlmsg_list* nlh; } ;


 int __set_errno (int) ;
 int errno ;
 int free (struct nlmsg_list*) ;

__attribute__((used)) static void
free_nlmsglist(struct nlmsg_list *nlm0)
{
  struct nlmsg_list *nlm, *nlm_next;
  int saved_errno;
  if (!nlm0)
    return;
  saved_errno = errno;
  for (nlm=nlm0; nlm; nlm=nlm_next){
    if (nlm->nlh)
      free(nlm->nlh);
    nlm_next=nlm->nlm_next;
    free(nlm);
  }
  __set_errno(saved_errno);
}
