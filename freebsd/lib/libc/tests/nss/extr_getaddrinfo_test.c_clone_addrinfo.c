
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct addrinfo {int ai_addrlen; struct addrinfo const* ai_next; struct addrinfo const* ai_addr; int * ai_canonname; } const addrinfo ;


 int ATF_REQUIRE (int ) ;
 void* malloc (int) ;
 int memcpy (struct addrinfo const*,struct addrinfo const*,int) ;
 int * strdup (int *) ;

__attribute__((used)) static void
clone_addrinfo(struct addrinfo *dest, struct addrinfo const *src)
{

 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 memcpy(dest, src, sizeof(struct addrinfo));
 if (src->ai_canonname != ((void*)0))
  dest->ai_canonname = strdup(src->ai_canonname);

 if (src->ai_addr != ((void*)0)) {
  dest->ai_addr = malloc(src->ai_addrlen);
  ATF_REQUIRE(dest->ai_addr != ((void*)0));
  memcpy(dest->ai_addr, src->ai_addr, src->ai_addrlen);
 }

 if (src->ai_next != ((void*)0)) {
  dest->ai_next = malloc(sizeof(struct addrinfo));
  ATF_REQUIRE(dest->ai_next != ((void*)0));
  clone_addrinfo(dest->ai_next, src->ai_next);
 }
}
