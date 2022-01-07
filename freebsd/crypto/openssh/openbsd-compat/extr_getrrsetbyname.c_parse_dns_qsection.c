
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct dns_query {void* class; void* type; int * name; struct dns_query* next; } ;
typedef int name ;


 int INT16SZ ;
 int MAXDNAME ;
 void* _getshort (int const*) ;
 struct dns_query* calloc (int,int) ;
 int dn_expand (int const*,int const*,int const*,char*,int) ;
 int free_dns_query (struct dns_query*) ;
 int * strdup (char*) ;

__attribute__((used)) static struct dns_query *
parse_dns_qsection(const u_char *answer, int size, const u_char **cp, int count)
{
 struct dns_query *head, *curr, *prev;
 int i, length;
 char name[MAXDNAME];

 for (i = 1, head = ((void*)0), prev = ((void*)0); i <= count; i++, prev = curr) {


  curr = calloc(1, sizeof(struct dns_query));
  if (curr == ((void*)0)) {
   free_dns_query(head);
   return (((void*)0));
  }
  if (head == ((void*)0))
   head = curr;
  if (prev != ((void*)0))
   prev->next = curr;


  length = dn_expand(answer, answer + size, *cp, name,
      sizeof(name));
  if (length < 0) {
   free_dns_query(head);
   return (((void*)0));
  }
  curr->name = strdup(name);
  if (curr->name == ((void*)0)) {
   free_dns_query(head);
   return (((void*)0));
  }
  *cp += length;


  curr->type = _getshort(*cp);
  *cp += INT16SZ;


  curr->class = _getshort(*cp);
  *cp += INT16SZ;
 }

 return (head);
}
