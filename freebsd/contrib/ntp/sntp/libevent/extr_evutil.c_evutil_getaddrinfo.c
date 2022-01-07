
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {scalar_t__ ai_family; int ai_flags; int ai_socktype; } ;
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_length; } ;
struct evutil_addrinfo {scalar_t__ ai_family; int ai_flags; int ai_socktype; } ;
typedef int hints ;
typedef int data ;
typedef int buf ;


 int ALL_NATIVE_AI_FLAGS ;
 int ALL_NONNATIVE_AI_FLAGS ;
 int EVUTIL_AI_ADDRCONFIG ;
 int EVUTIL_AI_NUMERICSERV ;
 int EVUTIL_ASSERT (int) ;
 int EVUTIL_EAI_AGAIN ;
 int EVUTIL_EAI_FAIL ;
 int EVUTIL_EAI_FAMILY ;
 int EVUTIL_EAI_MEMORY ;
 int EVUTIL_EAI_NEED_RESOLVE ;
 int EVUTIL_EAI_NODATA ;
 int EVUTIL_EAI_NONAME ;




 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNSPEC ;

 int WSAGetLastError () ;
 struct hostent_data* addrinfo_from_hostent (struct hostent*,int,struct hostent_data*) ;
 int apply_numeric_port_hack (int,struct hostent_data**) ;
 scalar_t__ apply_socktype_protocol_hack (struct hostent_data*) ;
 int evutil_adjust_hints_for_addrconfig_ (struct hostent_data*) ;
 int evutil_freeaddrinfo (struct hostent_data*) ;
 int evutil_getaddrinfo_common_ (char const*,char const*,struct hostent_data*,struct hostent_data**,int*) ;
 int evutil_getaddrinfo_infer_protocols (struct hostent_data*) ;
 int getaddrinfo (char const*,char const*,struct hostent_data*,struct hostent_data**) ;
 struct hostent* gethostbyname (char const*) ;
 int gethostbyname_r (char const*,struct hostent*,...) ;
 int h_errno ;
 int memcpy (struct hostent_data*,struct hostent_data const*,int) ;
 int memset (struct hostent_data*,int ,int) ;
 scalar_t__ need_numeric_port_hack () ;
 scalar_t__ need_socktype_protocol_hack () ;
 int parse_numeric_servname (char const*) ;

int
evutil_getaddrinfo(const char *nodename, const char *servname,
    const struct evutil_addrinfo *hints_in, struct evutil_addrinfo **res)
{
 int port=0, err;
 struct hostent *ent = ((void*)0);
 struct evutil_addrinfo hints;

 if (hints_in) {
  memcpy(&hints, hints_in, sizeof(hints));
 } else {
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
 }

 evutil_adjust_hints_for_addrconfig_(&hints);

 err = evutil_getaddrinfo_common_(nodename, servname, &hints, res, &port);
 if (err != EVUTIL_EAI_NEED_RESOLVE) {

  return err;
 }

 err = 0;

 {
  ent = gethostbyname(nodename);



  err = h_errno;




  if (!ent) {

   switch (err) {
   case 128:
    return EVUTIL_EAI_AGAIN;
   case 129:
   default:
    return EVUTIL_EAI_FAIL;
   case 132:
    return EVUTIL_EAI_NONAME;
   case 131:

   case 130:

    return EVUTIL_EAI_NODATA;
   }
  }

  if (ent->h_addrtype != hints.ai_family &&
      hints.ai_family != PF_UNSPEC) {



   return EVUTIL_EAI_NONAME;
  }


  if (ent->h_length == 0)
   return EVUTIL_EAI_NODATA;



  if (ent->h_addrtype != PF_INET && ent->h_addrtype != PF_INET6)
   return EVUTIL_EAI_FAMILY;

  *res = addrinfo_from_hostent(ent, port, &hints);
  if (! *res)
   return EVUTIL_EAI_MEMORY;
 }

 return 0;

}
