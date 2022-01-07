
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sockaddr {int ai_addrlen; int * ai_next; int * ai_canonname; struct sockaddr const* ai_addr; } const sockaddr ;
typedef struct addrinfo {int ai_addrlen; int * ai_next; int * ai_canonname; struct addrinfo const* ai_addr; } const addrinfo ;


 struct sockaddr const* calloc (int,size_t) ;
 int free (struct sockaddr const*) ;
 int * malloc (size_t) ;
 int memcpy (struct sockaddr const*,struct sockaddr const*,int) ;
 int strlcpy (int *,int *,size_t) ;
 int strlen (int *) ;

__attribute__((used)) static struct addrinfo *
copy_ai(const struct addrinfo *pai)
{
 struct addrinfo *ai;
 size_t l;

 l = sizeof(*ai) + pai->ai_addrlen;
 if ((ai = calloc(1, l)) == ((void*)0))
  return ((void*)0);
 memcpy(ai, pai, sizeof(*ai));
 ai->ai_addr = (struct sockaddr *)(void *)(ai + 1);
 memcpy(ai->ai_addr, pai->ai_addr, pai->ai_addrlen);

 if (pai->ai_canonname) {
  l = strlen(pai->ai_canonname) + 1;
  if ((ai->ai_canonname = malloc(l)) == ((void*)0)) {
   free(ai);
   return ((void*)0);
  }
  strlcpy(ai->ai_canonname, pai->ai_canonname, l);
 } else {

  ai->ai_canonname = ((void*)0);
 }

 ai->ai_next = ((void*)0);

 return ai;
}
