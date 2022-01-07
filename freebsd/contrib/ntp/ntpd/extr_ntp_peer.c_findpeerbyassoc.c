
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct peer {scalar_t__ associd; struct peer* aid_link; } ;
typedef scalar_t__ associd_t ;


 scalar_t__ NTP_HASH_MASK ;
 struct peer** assoc_hash ;
 int assocpeer_calls ;

struct peer *
findpeerbyassoc(
 associd_t assoc
 )
{
 struct peer *p;
 u_int hash;

 assocpeer_calls++;
 hash = assoc & NTP_HASH_MASK;
 for (p = assoc_hash[hash]; p != ((void*)0); p = p->aid_link)
  if (assoc == p->associd)
   break;
 return p;
}
