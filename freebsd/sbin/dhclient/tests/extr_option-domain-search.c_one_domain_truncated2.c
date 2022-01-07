
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet {struct option_data* options; } ;
struct option_data {int len; int data; } ;


 size_t DHO_DOMAIN_SEARCH ;
 int abort () ;
 int env ;
 int expand_domain_search (struct packet*) ;
 int free (int ) ;
 int malloc (int) ;
 int memcpy (int ,char*,int) ;
 int setjmp (int ) ;

void
one_domain_truncated2()
{
 int ret;
 struct option_data *option;
 struct packet p;

 char *data = "\007ex";

 option = &p.options[DHO_DOMAIN_SEARCH];
 option->len = 3;
 option->data = malloc(option->len);
 memcpy(option->data, data, option->len);

 ret = setjmp(env);
 if (ret == 0)
  expand_domain_search(&p);

 if (ret != 1)
  abort();

 free(option->data);
}
