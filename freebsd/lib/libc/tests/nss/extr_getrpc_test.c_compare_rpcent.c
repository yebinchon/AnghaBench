
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent {char* r_name; scalar_t__ r_number; char** r_aliases; } ;


 int dump_rpcent (struct rpcent*) ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
compare_rpcent(struct rpcent *rpc1, struct rpcent *rpc2, void *mdata)
{
 char **c1, **c2;

 if (rpc1 == rpc2)
  return 0;

 if ((rpc1 == ((void*)0)) || (rpc2 == ((void*)0)))
  goto errfin;

 if ((strcmp(rpc1->r_name, rpc2->r_name) != 0) ||
  (rpc1->r_number != rpc2->r_number))
   goto errfin;

 c1 = rpc1->r_aliases;
 c2 = rpc2->r_aliases;

 if ((rpc1->r_aliases == ((void*)0)) || (rpc2->r_aliases == ((void*)0)))
  goto errfin;

 for (;*c1 && *c2; ++c1, ++c2)
  if (strcmp(*c1, *c2) != 0)
   goto errfin;

 if ((*c1 != ((void*)0)) || (*c2 != ((void*)0)))
  goto errfin;

 return 0;

errfin:
 if (mdata == ((void*)0)) {
  printf("following structures are not equal:\n");
  dump_rpcent(rpc1);
  dump_rpcent(rpc2);
 }

 return (-1);
}
