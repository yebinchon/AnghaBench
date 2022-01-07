
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_ERR_CANCEL ;
 int DNS_ERR_NOTIMPL ;
 int DNS_ERR_REFUSED ;
 int DNS_ERR_SERVERFAILED ;

__attribute__((used)) static inline int
evdns_result_is_answer(int result)
{
 return (result != DNS_ERR_NOTIMPL && result != DNS_ERR_REFUSED &&
     result != DNS_ERR_SERVERFAILED && result != DNS_ERR_CANCEL);
}
