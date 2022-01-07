
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int AF_INET ;
 int AF_INET6 ;
 int CHECK (int) ;
 int CHECKX (int ) ;
 scalar_t__ ENOTCAPABLE ;
 int GETADDRINFO_AF_INET ;
 int GETADDRINFO_AF_INET6 ;
 int GETADDRINFO_AF_UNSPEC ;
 int GETHOSTBYADDR_AF_INET ;
 int GETHOSTBYADDR_AF_INET6 ;
 int GETHOSTBYNAME ;
 int GETHOSTBYNAME2_AF_INET ;
 int GETHOSTBYNAME2_AF_INET6 ;
 int * cap_clone (int *) ;
 int cap_close (int *) ;
 int cap_dns_family_limit (int *,int*,int) ;
 int cap_dns_type_limit (int *,char const**,int) ;
 int * cap_init () ;
 int * cap_service_open (int *,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fflush (int ) ;
 int printf (char*) ;
 int runtest (int *) ;
 int stdout ;

int
main(void)
{
 cap_channel_t *capcas, *capdns, *origcapdns;
 const char *types[2];
 int families[2];

 printf("1..91\n");
 fflush(stdout);

 capcas = cap_init();
 CHECKX(capcas != ((void*)0));

 origcapdns = capdns = cap_service_open(capcas, "system.dns");
 CHECKX(capdns != ((void*)0));

 cap_close(capcas);



 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
      GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6 |
      GETADDRINFO_AF_UNSPEC | GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
      GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6 |
      GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
     GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);

 CHECK(runtest(capdns) ==
     (GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6));
 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYADDR_AF_INET |
     GETADDRINFO_AF_INET));

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME2_AF_INET6 | GETHOSTBYADDR_AF_INET6 |
     GETADDRINFO_AF_INET6));

 cap_close(capdns);
 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);
 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETADDRINFO_AF_INET));

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);
 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) ==
     (GETHOSTBYNAME2_AF_INET6 | GETADDRINFO_AF_INET6));

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);
 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) == GETHOSTBYADDR_AF_INET);

 cap_close(capdns);







 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == 0);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == 0);
 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 types[1] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);
 families[1] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest(capdns) == GETHOSTBYADDR_AF_INET6);

 cap_close(capdns);



 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);

 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(cap_dns_type_limit(capdns, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 CHECK(cap_dns_family_limit(capdns, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);


 CHECK(runtest(capdns) == (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET |
     GETADDRINFO_AF_INET));

 cap_close(capdns);

 capdns = cap_clone(origcapdns);
 CHECK(capdns != ((void*)0));

 types[0] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 1) == 0);
 families[0] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 1) == 0);

 types[0] = "NAME2ADDR";
 types[1] = "ADDR2NAME";
 CHECK(cap_dns_type_limit(capdns, types, 2) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 families[1] = AF_INET6;
 CHECK(cap_dns_family_limit(capdns, families, 2) == -1 &&
     errno == ENOTCAPABLE);

 types[0] = "NAME2ADDR";
 CHECK(cap_dns_type_limit(capdns, types, 1) == -1 &&
     errno == ENOTCAPABLE);
 families[0] = AF_INET;
 CHECK(cap_dns_family_limit(capdns, families, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(cap_dns_type_limit(capdns, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 CHECK(cap_dns_family_limit(capdns, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);


 CHECK(runtest(capdns) == GETHOSTBYADDR_AF_INET6);

 cap_close(capdns);

 cap_close(origcapdns);

 exit(0);
}
