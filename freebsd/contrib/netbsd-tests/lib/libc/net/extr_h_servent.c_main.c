
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;


 int atoi (char const*) ;
 int endservent () ;
 int getopt (int,char**,char*) ;
 struct servent* getservbyname (char const*,char const*) ;
 struct servent* getservbyport (int ,char const*) ;
 struct servent* getservent () ;
 int htons (int ) ;
 char* optarg ;
 int pserv (struct servent*) ;
 int setservent (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct servent *svp;
 const char *port = ((void*)0), *proto = ((void*)0), *name = ((void*)0);
 int c;

 while ((c = getopt(argc, argv, "p:n:P:")) != -1) {
  switch (c) {
  case 'n':
   name = optarg;
   break;
  case 'p':
   port = optarg;
   break;
  case 'P':
   proto = optarg;
   break;
  default:
   usage();
  }
 }

 if (port && name)
  usage();
 if (port) {
  if ((svp = getservbyport(htons(atoi(port)), proto)) != ((void*)0))
   pserv(svp);
  return 0;
 }
 if (name) {
  if ((svp = getservbyname(name, proto)) != ((void*)0))
   pserv(svp);
  return 0;
 }

 setservent(0);
 while ((svp = getservent()) != ((void*)0))
  pserv(svp);
 endservent();
 return 0;
}
