
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_flags; scalar_t__ ai_family; scalar_t__ ai_socktype; scalar_t__ ai_protocol; scalar_t__ ai_addrlen; struct addrinfo* ai_next; int * ai_canonname; int ai_addr; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int stderr ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static bool
addrinfo_compare(struct addrinfo *ai0, struct addrinfo *ai1)
{
 struct addrinfo *at0, *at1;

 if (ai0 == ((void*)0) && ai1 == ((void*)0))
  return (1);
 if (ai0 == ((void*)0) || ai1 == ((void*)0))
  return (0);

 at0 = ai0;
 at1 = ai1;
 while (1) {
  if ((at0->ai_flags == at1->ai_flags) &&
      (at0->ai_family == at1->ai_family) &&
      (at0->ai_socktype == at1->ai_socktype) &&
      (at0->ai_protocol == at1->ai_protocol) &&
      (at0->ai_addrlen == at1->ai_addrlen) &&
      (memcmp(at0->ai_addr, at1->ai_addr,
   at0->ai_addrlen) == 0)) {
   if (at0->ai_canonname != ((void*)0) &&
       at1->ai_canonname != ((void*)0)) {
    if (strcmp(at0->ai_canonname,
        at1->ai_canonname) != 0) {
     return (0);
    }
   }

   if (at0->ai_canonname == ((void*)0) &&
       at1->ai_canonname != ((void*)0)) {
    return (0);
   }
   if (at0->ai_canonname != ((void*)0) &&
       at1->ai_canonname == ((void*)0)) {
    return (0);
   }

   if (at0->ai_next == ((void*)0) && at1->ai_next == ((void*)0))
    return (1);
   if (at0->ai_next == ((void*)0) || at1->ai_next == ((void*)0))
    return (0);

   at0 = at0->ai_next;
   at1 = at1->ai_next;
  } else {
   return (0);
  }
 }


 fprintf(stderr, "Dead code reached in addrinfo_compare()\n");
 exit(1);
}
