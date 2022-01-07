
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct protoent {int p_proto; } ;
struct outproto {int num; int * name; } ;


 struct protoent* getprotobyname (char*) ;
 int optarg ;
 struct outproto* protos ;
 int str2val (int ,char*,int,int) ;
 scalar_t__ strcasecmp (int *,char*) ;

struct outproto *
setproto(char *pname)
{
 struct outproto *proto;
 int i;

 for (i = 0; protos[i].name != ((void*)0); i++) {
  if (strcasecmp(protos[i].name, pname) == 0) {
   break;
  }
 }
 proto = &protos[i];
 if (proto->name == ((void*)0)) {
  struct protoent *pe;
  u_long pnum;


  if ((pe = getprotobyname(pname)) != ((void*)0))
   pnum = pe->p_proto;
  else
   pnum = str2val(optarg, "proto number", 1, 255);
  proto->num = pnum;
 }
 return proto;
}
