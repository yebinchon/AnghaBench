
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet {struct option_data* options; } ;
struct option_data {scalar_t__ len; int * data; } ;


 size_t DHO_DOMAIN_SEARCH ;
 int abort () ;
 int env ;
 int expand_domain_search (struct packet*) ;
 int setjmp (int ) ;

void
no_option_present()
{
 int ret;
 struct option_data option;
 struct packet p;

 option.data = ((void*)0);
 option.len = 0;
 p.options[DHO_DOMAIN_SEARCH] = option;

 ret = setjmp(env);
 if (ret == 0)
  expand_domain_search(&p);

 if (p.options[DHO_DOMAIN_SEARCH].len != 0 ||
     p.options[DHO_DOMAIN_SEARCH].data != ((void*)0))
  abort();
}
