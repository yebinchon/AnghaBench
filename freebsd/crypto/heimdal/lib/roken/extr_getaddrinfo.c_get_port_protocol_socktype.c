
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
struct protoent {char* p_name; int p_proto; } ;
struct addrinfo {scalar_t__ ai_protocol; int ai_socktype; } ;


 int EAI_NONAME ;
 int EAI_SOCKTYPE ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 struct protoent* getprotobynumber (scalar_t__) ;
 struct servent* getservbyname (char const*,char const*) ;
 int htons (int ) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int
get_port_protocol_socktype (const char *servname,
       const struct addrinfo *hints,
       int *port,
       int *protocol,
       int *socktype)
{
    struct servent *se;
    const char *proto_str = ((void*)0);

    *socktype = 0;

    if (hints != ((void*)0) && hints->ai_protocol != 0) {
 struct protoent *protoent = getprotobynumber (hints->ai_protocol);

 if (protoent == ((void*)0))
     return EAI_SOCKTYPE;

 proto_str = protoent->p_name;
 *protocol = protoent->p_proto;
    }

    if (hints != ((void*)0))
 *socktype = hints->ai_socktype;

    if (*socktype == SOCK_STREAM) {
 se = getservbyname (servname, proto_str ? proto_str : "tcp");
 if (proto_str == ((void*)0))
     *protocol = IPPROTO_TCP;
    } else if (*socktype == SOCK_DGRAM) {
 se = getservbyname (servname, proto_str ? proto_str : "udp");
 if (proto_str == ((void*)0))
     *protocol = IPPROTO_UDP;
    } else if (*socktype == 0) {
 if (proto_str != ((void*)0)) {
     se = getservbyname (servname, proto_str);
 } else {
     se = getservbyname (servname, "tcp");
     *protocol = IPPROTO_TCP;
     *socktype = SOCK_STREAM;
     if (se == ((void*)0)) {
  se = getservbyname (servname, "udp");
  *protocol = IPPROTO_UDP;
  *socktype = SOCK_DGRAM;
     }
 }
    } else
 return EAI_SOCKTYPE;

    if (se == ((void*)0)) {
 char *endstr;

 *port = htons(strtol (servname, &endstr, 10));
 if (servname == endstr)
     return EAI_NONAME;
    } else {
 *port = se->s_port;
    }
    return 0;
}
