
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sast ;
typedef int nvlist_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAI_FAIL ;
 int EAI_MEMORY ;
 int NO_RECOVERY ;
 char* calloc (int,size_t) ;
 int dns_allowed_family (int const*,int) ;
 int dns_allowed_type (int const*,char*) ;
 int free (char*) ;
 int getnameinfo (struct sockaddr*,int,char*,size_t,char*,size_t,int) ;
 int memcpy (struct sockaddr_storage*,void const*,size_t) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int nvlist_move_string (int *,char*,char*) ;

__attribute__((used)) static int
dns_getnameinfo(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct sockaddr_storage sast;
 const void *sabin;
 char *host, *serv;
 size_t sabinsize, hostlen, servlen;
 socklen_t salen;
 int error, flags;

 if (!dns_allowed_type(limits, "ADDR2NAME") &&
     !dns_allowed_type(limits, "ADDR"))
  return (NO_RECOVERY);

 error = 0;
 host = serv = ((void*)0);
 memset(&sast, 0, sizeof(sast));

 hostlen = (size_t)nvlist_get_number(nvlin, "hostlen");
 servlen = (size_t)nvlist_get_number(nvlin, "servlen");

 if (hostlen > 0) {
  host = calloc(1, hostlen + 1);
  if (host == ((void*)0)) {
   error = EAI_MEMORY;
   goto out;
  }
 }
 if (servlen > 0) {
  serv = calloc(1, servlen + 1);
  if (serv == ((void*)0)) {
   error = EAI_MEMORY;
   goto out;
  }
 }

 sabin = nvlist_get_binary(nvlin, "sa", &sabinsize);
 if (sabinsize > sizeof(sast)) {
  error = EAI_FAIL;
  goto out;
 }

 memcpy(&sast, sabin, sabinsize);
 salen = (socklen_t)sabinsize;

 if ((sast.ss_family != AF_INET ||
      salen != sizeof(struct sockaddr_in)) &&
     (sast.ss_family != AF_INET6 ||
      salen != sizeof(struct sockaddr_in6))) {
  error = EAI_FAIL;
  goto out;
 }

 if (!dns_allowed_family(limits, (int)sast.ss_family)) {
  error = NO_RECOVERY;
  goto out;
 }

 flags = (int)nvlist_get_number(nvlin, "flags");

 error = getnameinfo((struct sockaddr *)&sast, salen, host, hostlen,
     serv, servlen, flags);
 if (error != 0)
  goto out;

 if (host != ((void*)0))
  nvlist_move_string(nvlout, "host", host);
 if (serv != ((void*)0))
  nvlist_move_string(nvlout, "serv", serv);
out:
 if (error != 0) {
  free(host);
  free(serv);
 }
 return (error);
}
