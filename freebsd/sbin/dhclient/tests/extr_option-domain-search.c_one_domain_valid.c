
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
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;

void
one_domain_valid()
{
 int ret;
 struct packet p;
 struct option_data *option;

 char *data = "\007example\003org\0";
 char *expected = "example.org.";

 option = &p.options[DHO_DOMAIN_SEARCH];
 option->len = 13;
 option->data = malloc(option->len);
 memcpy(option->data, data, option->len);

 ret = setjmp(env);
 if (ret == 0)
  expand_domain_search(&p);

 if (option->len != strlen(expected) ||
     strcmp(option->data, expected) != 0)
  abort();

 free(option->data);
}
