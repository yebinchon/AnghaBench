
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in6 {short sin6_family; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {short sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {void* sa_family; } ;
struct hostent {void* h_addrtype; int h_name; int h_length; int h_addr; } ;
struct addrinfo {void* ai_family; int ai_addrlen; int ai_flags; int ai_canonname; TYPE_3__* ai_addr; } ;
struct TYPE_6__ {int sa_len; void* sa_family; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int DNSlookup_name (char const*,void*,struct hostent**) ;
 int EAI_AGAIN ;
 int EAI_MEMORY ;
 int EAI_NONAME ;
 int INADDR_ANY ;
 int SOCKLEN (TYPE_3__*) ;
 int TRY_AGAIN ;
 TYPE_3__* calloc (int,int) ;
 int estrdup (int ) ;
 int htonl (int ) ;
 int inet_pton (void*,char const*,TYPE_1__*) ;
 int memcpy (TYPE_1__*,int ,int ) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static int
do_nodename(
 const char *nodename,
 struct addrinfo *ai,
 const struct addrinfo *hints)
{
 struct hostent *hp = ((void*)0);
 struct sockaddr_in *sockin;
 struct sockaddr_in6 *sockin6;
 int errval;

 ai->ai_addr = calloc(sizeof(struct sockaddr_storage), 1);
 if (ai->ai_addr == ((void*)0))
  return (EAI_MEMORY);






 if (nodename == ((void*)0)) {
  if (ai->ai_family == AF_INET)
  {
   ai->ai_addrlen = sizeof(struct sockaddr_in);
   sockin = (struct sockaddr_in *)ai->ai_addr;
   sockin->sin_family = (short) ai->ai_family;
   sockin->sin_addr.s_addr = htonl(INADDR_ANY);
  }
  else
  {
   ai->ai_addrlen = sizeof(struct sockaddr_in6);
   sockin6 = (struct sockaddr_in6 *)ai->ai_addr;
   sockin6->sin6_family = (short) ai->ai_family;







  }




  return (0);
 }




 if(strchr(nodename, ':') != ((void*)0)) {
  if (inet_pton(AF_INET6, nodename,
      &((struct sockaddr_in6 *)ai->ai_addr)->sin6_addr) == 1) {
   ((struct sockaddr_in6 *)ai->ai_addr)->sin6_family = AF_INET6;
   ai->ai_family = AF_INET6;
   ai->ai_addrlen = sizeof(struct sockaddr_in6);
   return (0);
  }
 }




 if (inet_pton(AF_INET, nodename,
     &((struct sockaddr_in *)ai->ai_addr)->sin_addr) == 1) {
  ((struct sockaddr *)ai->ai_addr)->sa_family = AF_INET;
  ai->ai_family = AF_INET;
  ai->ai_addrlen = sizeof(struct sockaddr_in);
  return (0);
 }




 if (hints != ((void*)0) && (hints->ai_flags & AI_NUMERICHOST))
  return (EAI_NONAME);





 errval = DNSlookup_name(nodename, AF_INET, &hp);

 if (hp == ((void*)0)) {
  if (errval == TRY_AGAIN || errval == EAI_AGAIN)
   return (EAI_AGAIN);
  else if (errval == EAI_NONAME) {
   if (inet_pton(AF_INET, nodename,
       &((struct sockaddr_in *)ai->ai_addr)->sin_addr) == 1) {
    ((struct sockaddr *)ai->ai_addr)->sa_family = AF_INET;
    ai->ai_family = AF_INET;
    ai->ai_addrlen = sizeof(struct sockaddr_in);
    return (0);
   }
   return (errval);
  }
  else
  {
   return (errval);
  }
 }
 ai->ai_family = hp->h_addrtype;
 ai->ai_addrlen = sizeof(struct sockaddr);
 sockin = (struct sockaddr_in *)ai->ai_addr;
 memcpy(&sockin->sin_addr, hp->h_addr, hp->h_length);
 ai->ai_addr->sa_family = hp->h_addrtype;



 if (hints != ((void*)0) && (hints->ai_flags & AI_CANONNAME))
  ai->ai_canonname = estrdup(hp->h_name);
 return (0);
}
