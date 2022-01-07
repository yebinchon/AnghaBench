
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; int h_addrtype; char** h_addr_list; int h_length; int * h_aliases; } ;


 int ADDRLEN (int) ;
 struct hostent* _hpcopy (struct hostent*,int*) ;

__attribute__((used)) static struct hostent *
_hpaddr(int af, const char *name, void *addr, int *errp)
{
 struct hostent *hp, hpbuf;
 char *addrs[2];

 hp = &hpbuf;
 hp->h_name = (char *)name;
 hp->h_aliases = ((void*)0);
 hp->h_addrtype = af;
 hp->h_length = ADDRLEN(af);
 hp->h_addr_list = addrs;
 addrs[0] = (char *)addr;
 addrs[1] = ((void*)0);
 return (_hpcopy(hp, errp));
}
