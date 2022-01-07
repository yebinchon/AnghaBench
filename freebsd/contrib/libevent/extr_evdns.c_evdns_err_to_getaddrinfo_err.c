
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_ERR_NONE ;
 int DNS_ERR_NOTEXIST ;
 int EVUTIL_EAI_FAIL ;
 int EVUTIL_EAI_NONAME ;

__attribute__((used)) static int
evdns_err_to_getaddrinfo_err(int e1)
{

 if (e1 == DNS_ERR_NONE)
  return 0;
 else if (e1 == DNS_ERR_NOTEXIST)
  return EVUTIL_EAI_NONAME;
 else
  return EVUTIL_EAI_FAIL;
}
