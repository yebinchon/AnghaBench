
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_addrtype; int h_length; int ** h_addr_list; int ** h_aliases; int * h_name; } ;
typedef int nvlname ;
typedef int nvlist_t ;


 int NO_RECOVERY ;
 int assert (int) ;
 int bcopy (int ,int *,int) ;
 void* calloc (int,unsigned int) ;
 int h_errno ;
 int hostent_free (struct hostent*) ;
 int * malloc (int) ;
 int nvlist_get_binary (int const*,char*,int *) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int nvlist_get_string (int const*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 void* strdup (int ) ;

__attribute__((used)) static struct hostent *
hostent_unpack(const nvlist_t *nvl, struct hostent *hp)
{
 unsigned int ii, nitems;
 char nvlname[64];
 int n;

 hostent_free(hp);

 hp->h_name = strdup(nvlist_get_string(nvl, "name"));
 if (hp->h_name == ((void*)0))
  goto fail;
 hp->h_addrtype = (int)nvlist_get_number(nvl, "addrtype");
 hp->h_length = (int)nvlist_get_number(nvl, "length");

 nitems = (unsigned int)nvlist_get_number(nvl, "naliases");
 hp->h_aliases = calloc(sizeof(hp->h_aliases[0]), nitems + 1);
 if (hp->h_aliases == ((void*)0))
  goto fail;
 for (ii = 0; ii < nitems; ii++) {
  n = snprintf(nvlname, sizeof(nvlname), "alias%u", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  hp->h_aliases[ii] =
      strdup(nvlist_get_string(nvl, nvlname));
  if (hp->h_aliases[ii] == ((void*)0))
   goto fail;
 }
 hp->h_aliases[ii] = ((void*)0);

 nitems = (unsigned int)nvlist_get_number(nvl, "naddrs");
 hp->h_addr_list = calloc(sizeof(hp->h_addr_list[0]), nitems + 1);
 if (hp->h_addr_list == ((void*)0))
  goto fail;
 for (ii = 0; ii < nitems; ii++) {
  hp->h_addr_list[ii] = malloc(hp->h_length);
  if (hp->h_addr_list[ii] == ((void*)0))
   goto fail;
  n = snprintf(nvlname, sizeof(nvlname), "addr%u", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  bcopy(nvlist_get_binary(nvl, nvlname, ((void*)0)),
      hp->h_addr_list[ii], hp->h_length);
 }
 hp->h_addr_list[ii] = ((void*)0);

 return (hp);
fail:
 hostent_free(hp);
 h_errno = NO_RECOVERY;
 return (((void*)0));
}
