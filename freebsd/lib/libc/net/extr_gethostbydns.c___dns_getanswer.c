
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {int dummy; } ;
struct hostent {int h_length; int h_addrtype; } ;
typedef int res_state ;
typedef int querybuf ;


 int AF_INET ;
 int AF_INET6 ;
 int NETDB_INTERNAL ;
 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 int RES_SET_H_ERRNO (int ,int ) ;


 struct hostent_data* __hostent_data_init () ;
 struct hostent* __hostent_init () ;
 int __res_state () ;
 int gethostanswer (int const*,int,char const*,int,struct hostent*,struct hostent_data*,int ) ;

struct hostent *
__dns_getanswer(const char *answer, int anslen, const char *qname, int qtype)
{
 struct hostent *he;
 struct hostent_data *hed;
 int error;
 res_state statp;

 statp = __res_state();
 if ((he = __hostent_init()) == ((void*)0) ||
     (hed = __hostent_data_init()) == ((void*)0)) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (((void*)0));
 }
 switch (qtype) {
 case 128:
  he->h_addrtype = AF_INET6;
  he->h_length = NS_IN6ADDRSZ;
  break;
 case 129:
 default:
  he->h_addrtype = AF_INET;
  he->h_length = NS_INADDRSZ;
  break;
 }

 error = gethostanswer((const querybuf *)answer, anslen, qname, qtype,
     he, hed, statp);
 return (error == 0) ? he : ((void*)0);
}
