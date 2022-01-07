
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afd {int a_loopback; int a_addrany; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; } ;


 int AI_PASSIVE ;
 scalar_t__ EMFILE ;
 int GET_AI (struct addrinfo*,struct afd const*,int ) ;
 int GET_PORT (struct addrinfo*,char const*) ;
 scalar_t__ PF_LOCAL ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int _close (int) ;
 int _socket (scalar_t__,int,int ) ;
 scalar_t__ errno ;
 struct afd* find_afd (scalar_t__) ;
 int freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static int
explore_null(const struct addrinfo *pai, const char *servname,
    struct addrinfo **res)
{
 int s;
 const struct afd *afd;
 struct addrinfo *ai;
 int error;

 *res = ((void*)0);
 ai = ((void*)0);

 if (pai->ai_family == PF_LOCAL)
  return (0);





 s = _socket(pai->ai_family, SOCK_DGRAM | SOCK_CLOEXEC, 0);
 if (s < 0) {
  if (errno != EMFILE)
   return 0;
 } else
  _close(s);

 afd = find_afd(pai->ai_family);
 if (afd == ((void*)0))
  return 0;

 if (pai->ai_flags & AI_PASSIVE) {
  GET_AI(ai, afd, afd->a_addrany);
  GET_PORT(ai, servname);
 } else {
  GET_AI(ai, afd, afd->a_loopback);
  GET_PORT(ai, servname);
 }

 *res = ai;
 return 0;

free:
 if (ai != ((void*)0))
  freeaddrinfo(ai);
 return error;
}
