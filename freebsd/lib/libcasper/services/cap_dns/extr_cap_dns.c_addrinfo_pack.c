
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct addrinfo {int * ai_canonname; scalar_t__ ai_addrlen; int ai_addr; scalar_t__ ai_protocol; scalar_t__ ai_socktype; scalar_t__ ai_family; scalar_t__ ai_flags; } ;
typedef int nvlist_t ;


 int nvlist_add_binary (int *,char*,int ,size_t) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,int *) ;
 int * nvlist_create (int ) ;

__attribute__((used)) static nvlist_t *
addrinfo_pack(const struct addrinfo *ai)
{
 nvlist_t *nvl;

 nvl = nvlist_create(0);
 nvlist_add_number(nvl, "ai_flags", (uint64_t)ai->ai_flags);
 nvlist_add_number(nvl, "ai_family", (uint64_t)ai->ai_family);
 nvlist_add_number(nvl, "ai_socktype", (uint64_t)ai->ai_socktype);
 nvlist_add_number(nvl, "ai_protocol", (uint64_t)ai->ai_protocol);
 nvlist_add_binary(nvl, "ai_addr", ai->ai_addr, (size_t)ai->ai_addrlen);
 if (ai->ai_canonname != ((void*)0))
  nvlist_add_string(nvl, "ai_canonname", ai->ai_canonname);

 return (nvl);
}
