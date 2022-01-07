
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int dummy; } ;


 int atoi (char const*) ;
 int endprotoent () ;
 int getopt (int,char**,char*) ;
 struct protoent* getprotobyname (char const*) ;
 struct protoent* getprotobynumber (int ) ;
 struct protoent* getprotoent () ;
 char* optarg ;
 int pserv (struct protoent*) ;
 int setprotoent (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct protoent *prp;
 const char *proto = ((void*)0), *name = ((void*)0);
 int c;

 while ((c = getopt(argc, argv, "p:n:")) != -1) {
  switch (c) {
  case 'n':
   name = optarg;
   break;
  case 'p':
   proto = optarg;
   break;
  default:
   usage();
  }
 }

 if (proto && name)
  usage();
 if (proto) {
  if ((prp = getprotobynumber(atoi(proto))) != ((void*)0))
   pserv(prp);
  return 0;
 }
 if (name) {
  if ((prp = getprotobyname(name)) != ((void*)0))
   pserv(prp);
  return 0;
 }

 setprotoent(0);
 while ((prp = getprotoent()) != ((void*)0))
  pserv(prp);
 endprotoent();
 return 0;
}
