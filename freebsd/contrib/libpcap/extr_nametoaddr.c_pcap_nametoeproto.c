
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eproto {scalar_t__ s; int p; } ;


 int PROTO_UNDEF ;
 struct eproto* eproto_db ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

int
pcap_nametoeproto(const char *s)
{
 struct eproto *p = eproto_db;

 while (p->s != 0) {
  if (strcmp(p->s, s) == 0)
   return p->p;
  p += 1;
 }
 return PROTO_UNDEF;
}
