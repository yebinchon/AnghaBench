
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; int ai_flags; int ai_socktype; } ;
typedef int hints ;




 int AI_ADDRCONFIG ;
 int AI_NUMERICHOST ;
 int AI_NUMERICSERV ;
 int ATF_REQUIRE_EQ_MSG (int,int ,char*,int ) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 scalar_t__ asprintf (char**,char*,int) ;
 int atf_tc_fail (char*,int) ;
 int errno ;
 int free (char*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
resolve_localhost(struct addrinfo **res, int domain, int type, int port)
{
 const char *host;
 char *serv;
 struct addrinfo hints;
 int error;

 switch (domain) {
 case 129:
  host = "127.0.0.1";
  break;
 case 128:
  host = "::1";
  break;
 default:
  atf_tc_fail("unhandled domain: %d", domain);
 }

 ATF_REQUIRE_MSG(asprintf(&serv, "%d", port) >= 0,
     "asprintf failed: %s", strerror(errno));

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = domain;
 hints.ai_flags = AI_ADDRCONFIG|AI_NUMERICSERV|AI_NUMERICHOST;
 hints.ai_socktype = type;

 error = getaddrinfo(host, serv, &hints, res);
 ATF_REQUIRE_EQ_MSG(error, 0,
     "getaddrinfo failed: %s", gai_strerror(error));
 free(serv);
}
