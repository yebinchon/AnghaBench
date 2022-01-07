
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet {struct option_data* options; } ;
struct option_data {unsigned char* data; size_t len; } ;


 size_t DHO_DOMAIN_SEARCH ;
 int error (char*) ;
 int expand_search_domain_name (struct option_data*,size_t*,unsigned char**) ;
 int find_search_domain_name_len (struct option_data*,size_t*) ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;

void
expand_domain_search(struct packet *packet)
{
 size_t offset;
 int expanded_len, next_domain_len;
 struct option_data *option;
 unsigned char *domain_search, *cursor;

 if (packet->options[DHO_DOMAIN_SEARCH].data == ((void*)0))
  return;

 option = &packet->options[DHO_DOMAIN_SEARCH];


 expanded_len = 0;
 offset = 0;
 while (offset < option->len) {
  next_domain_len = find_search_domain_name_len(option, &offset);
  if (next_domain_len < 0)

   return;


  expanded_len += next_domain_len + 1;
 }
 if (expanded_len > 0)

  --expanded_len;

 domain_search = malloc(expanded_len + 1);
 if (domain_search == ((void*)0))
  error("Can't allocate storage for expanded domain-search\n");

 offset = 0;
 cursor = domain_search;
 while (offset < option->len) {
  expand_search_domain_name(option, &offset, &cursor);
  cursor[0] = ' ';
  cursor++;
 }
 domain_search[expanded_len] = '\0';

 free(option->data);
 option->len = expanded_len;
 option->data = domain_search;
}
