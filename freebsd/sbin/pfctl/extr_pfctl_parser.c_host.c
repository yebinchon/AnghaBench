
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_host {int dummy; } ;


 int err (int,char*) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 struct node_host* host_dns (char*,int,int) ;
 struct node_host* host_if (char*,int) ;
 struct node_host* host_v4 (char const*,int) ;
 struct node_host* host_v6 (char*,int) ;
 char* malloc (scalar_t__) ;
 int stderr ;
 char* strdup (char const*) ;
 int strlcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int strtol (char*,char**,int ) ;

struct node_host *
host(const char *s)
{
 struct node_host *h = ((void*)0);
 int mask, v4mask, v6mask, cont = 1;
 char *p, *q, *ps;

 if ((p = strrchr(s, '/')) != ((void*)0)) {
  mask = strtol(p+1, &q, 0);
  if (!q || *q || mask > 128 || q == (p+1)) {
   fprintf(stderr, "invalid netmask '%s'\n", p);
   return (((void*)0));
  }
  if ((ps = malloc(strlen(s) - strlen(p) + 1)) == ((void*)0))
   err(1, "host: malloc");
  strlcpy(ps, s, strlen(s) - strlen(p) + 1);
  v4mask = v6mask = mask;
 } else {
  if ((ps = strdup(s)) == ((void*)0))
   err(1, "host: strdup");
  v4mask = 32;
  v6mask = 128;
  mask = -1;
 }


 if (cont && (h = host_if(ps, mask)) != ((void*)0))
  cont = 0;


 if (cont && (h = host_v4(s, mask)) != ((void*)0))
  cont = 0;


 if (cont && (h = host_v6(ps, v6mask)) != ((void*)0))
  cont = 0;


 if (cont && (h = host_dns(ps, v4mask, v6mask)) != ((void*)0))
  cont = 0;
 free(ps);

 if (h == ((void*)0) || cont == 1) {
  fprintf(stderr, "no IP address found for %s\n", s);
  return (((void*)0));
 }
 return (h);
}
