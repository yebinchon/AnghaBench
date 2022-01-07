
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {char* data; int sz; } ;


 int free (char*) ;
 int mandoc_asprintf (char**,char*,char*,char const*) ;
 char* mandoc_strdup (char const*) ;
 int strlen (char const*) ;

void
eqn_read(struct eqn_node *ep, const char *p)
{
 char *cp;

 if (ep->data == ((void*)0)) {
  ep->sz = strlen(p);
  ep->data = mandoc_strdup(p);
 } else {
  ep->sz = mandoc_asprintf(&cp, "%s %s", ep->data, p);
  free(ep->data);
  ep->data = cp;
 }
 ep->sz += 1;
}
