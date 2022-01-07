
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policyhead {int dummy; } ;
struct ai_order {int aio_initial_sequence; struct addrinfo* aio_ai; int aio_dstpolicy; int aio_dstscope; } ;
struct addrinfo {struct addrinfo* ai_next; int ai_addr; } ;


 int TAILQ_INIT (struct policyhead*) ;
 struct ai_order* calloc (int,int) ;
 int comp_dst ;
 int free (struct ai_order*) ;
 int free_addrselectpolicy (struct policyhead*) ;
 int gai_addr2scopetype (int ) ;
 int get_addrselectpolicy (struct policyhead*) ;
 int match_addrselectpolicy (int ,struct policyhead*) ;
 int qsort (struct ai_order*,int,int,int ) ;
 int set_source (struct ai_order*,struct policyhead*) ;

__attribute__((used)) static int
reorder(struct addrinfo *sentinel)
{
 struct addrinfo *ai, **aip;
 struct ai_order *aio;
 int i, n;
 struct policyhead policyhead;


 for (n = 0, ai = sentinel->ai_next; ai != ((void*)0); ai = ai->ai_next, n++)
  ;




 if (n <= 1)
  return(n);


 if ((aio = calloc(n, sizeof(*aio))) == ((void*)0))
  return(n);


 TAILQ_INIT(&policyhead);
 if (!get_addrselectpolicy(&policyhead)) {

  free(aio);
  return (n);
 }

 for (i = 0, ai = sentinel->ai_next; i < n; ai = ai->ai_next, i++) {
  aio[i].aio_ai = ai;
  aio[i].aio_dstscope = gai_addr2scopetype(ai->ai_addr);
  aio[i].aio_dstpolicy = match_addrselectpolicy(ai->ai_addr,
             &policyhead);
  set_source(&aio[i], &policyhead);
  aio[i].aio_initial_sequence = i;
 }


 qsort(aio, n, sizeof(*aio), comp_dst);


 for (i = 0, aip = &sentinel->ai_next; i < n; i++) {
  *aip = aio[i].aio_ai;
  aip = &aio[i].aio_ai->ai_next;
 }
 *aip = ((void*)0);


 free(aio);
 free_addrselectpolicy(&policyhead);
 return(n);
}
