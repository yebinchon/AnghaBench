
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {char* s_name; char* s_proto; scalar_t__ s_port; char** s_aliases; } ;


 int dump_servent (struct servent*) ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
compare_servent(struct servent *serv1, struct servent *serv2, void *mdata)
{
 char **c1, **c2;

 if (serv1 == serv2)
  return 0;

 if ((serv1 == ((void*)0)) || (serv2 == ((void*)0)))
  goto errfin;

 if ((strcmp(serv1->s_name, serv2->s_name) != 0) ||
  (strcmp(serv1->s_proto, serv2->s_proto) != 0) ||
  (serv1->s_port != serv2->s_port))
   goto errfin;

 c1 = serv1->s_aliases;
 c2 = serv2->s_aliases;

 if ((serv1->s_aliases == ((void*)0)) || (serv2->s_aliases == ((void*)0)))
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
  dump_servent(serv1);
  dump_servent(serv2);
 }

 return (-1);
}
