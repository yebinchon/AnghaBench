
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct hostent_data {char* hostbuf; char** h_addr_ptrs; scalar_t__ host_addr; int ** host_aliases; } ;
struct hostent {int h_addrtype; char* h_name; char** h_addr_list; int ** h_aliases; int h_length; } ;
typedef TYPE_1__* res_state ;
struct TYPE_4__ {unsigned int options; } ;




 int EAFNOSUPPORT ;
 int ENOMEM ;
 int HOST_NOT_FOUND ;
 size_t MAXDNAME ;
 int NETDB_INTERNAL ;
 int NETDB_SUCCESS ;
 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 unsigned int RES_USE_INET6 ;
 scalar_t__ __copy_hostent (struct hostent*,struct hostent*,char*,size_t) ;
 struct hostent_data* __hostent_data_init () ;
 int _map_v4v6_address (char*,char*) ;
 int errno ;
 int inet_aton (char const*,struct in_addr*) ;
 int inet_pton (int,char const*,scalar_t__) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int
fakeaddr(const char *name, int af, struct hostent *hp, char *buf,
    size_t buflen, res_state statp)
{
 struct hostent_data *hed;
 struct hostent he;

 if ((hed = __hostent_data_init()) == ((void*)0)) {
  errno = ENOMEM;
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }

 if ((af != 129 ||
     inet_aton(name, (struct in_addr *)hed->host_addr) != 1) &&
     inet_pton(af, name, hed->host_addr) != 1) {
  RES_SET_H_ERRNO(statp, HOST_NOT_FOUND);
  return (-1);
 }
 strncpy(hed->hostbuf, name, MAXDNAME);
 hed->hostbuf[MAXDNAME] = '\0';
 if (af == 129 && (statp->options & RES_USE_INET6) != 0U) {
  _map_v4v6_address((char *)hed->host_addr,
      (char *)hed->host_addr);
  af = 128;
 }
 he.h_addrtype = af;
 switch(af) {
 case 129:
  he.h_length = NS_INADDRSZ;
  break;
 case 128:
  he.h_length = NS_IN6ADDRSZ;
  break;
 default:
  errno = EAFNOSUPPORT;
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }
 he.h_name = hed->hostbuf;
 he.h_aliases = hed->host_aliases;
 hed->host_aliases[0] = ((void*)0);
 hed->h_addr_ptrs[0] = (char *)hed->host_addr;
 hed->h_addr_ptrs[1] = ((void*)0);
 he.h_addr_list = hed->h_addr_ptrs;
 if (__copy_hostent(&he, hp, buf, buflen) != 0) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }
 RES_SET_H_ERRNO(statp, NETDB_SUCCESS);
 return (0);
}
