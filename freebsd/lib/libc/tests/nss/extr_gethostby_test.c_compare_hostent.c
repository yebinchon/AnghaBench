
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; scalar_t__ h_addrtype; char** h_aliases; char** h_addr_list; int h_length; } ;


 int dump_hostent (struct hostent*) ;
 scalar_t__ memcmp (char*,char*,int ) ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
compare_hostent(struct hostent *ht1, struct hostent *ht2, void *mdata)
{
 char **c1, **c2, **ct, **cb;
 int b;

 if (ht1 == ht2)
  return 0;

 if (ht1 == ((void*)0) || ht2 == ((void*)0))
  goto errfin;

 if (ht1->h_name == ((void*)0) || ht2->h_name == ((void*)0))
  goto errfin;

 if (ht1->h_addrtype != ht2->h_addrtype ||
     ht1->h_length != ht2->h_length ||
     strcmp(ht1->h_name, ht2->h_name) != 0)
  goto errfin;

 c1 = ht1->h_aliases;
 c2 = ht2->h_aliases;

 if ((ht1->h_aliases == ((void*)0) || ht2->h_aliases == ((void*)0)) &&
     ht1->h_aliases != ht2->h_aliases)
  goto errfin;

 if (c1 != ((void*)0) && c2 != ((void*)0)) {
  cb = c1;
  for (;*c1; ++c1) {
   b = 0;
   for (ct = c2; *ct; ++ct) {
    if (strcmp(*c1, *ct) == 0) {
     b = 1;
     break;
    }
   }
   if (b == 0) {
    printf("h1 aliases item can't be found in h2 "
        "aliases\n");
    goto errfin;
   }
  }

  c1 = cb;
  for (;*c2; ++c2) {
   b = 0;
   for (ct = c1; *ct; ++ct) {
    if (strcmp(*c2, *ct) == 0) {
     b = 1;
     break;
    }
   }
   if (b == 0) {
    printf("h2 aliases item can't be found in h1 "
        "aliases\n");
    goto errfin;
   }
  }
 }

 c1 = ht1->h_addr_list;
 c2 = ht2->h_addr_list;

 if ((ht1->h_addr_list == ((void*)0) || ht2->h_addr_list== ((void*)0)) &&
     ht1->h_addr_list != ht2->h_addr_list)
  goto errfin;

 if (c1 != ((void*)0) && c2 != ((void*)0)) {
  cb = c1;
  for (; *c1; ++c1) {
   b = 0;
   for (ct = c2; *ct; ++ct) {
    if (memcmp(*c1, *ct, ht1->h_length) == 0) {
     b = 1;
     break;
    }
   }
   if (b == 0) {
    printf("h1 addresses item can't be found in "
        "h2 addresses\n");
    goto errfin;
   }
  }

  c1 = cb;
  for (; *c2; ++c2) {
   b = 0;
   for (ct = c1; *ct; ++ct) {
    if (memcmp(*c2, *ct, ht1->h_length) == 0) {
     b = 1;
     break;
    }
   }
   if (b == 0) {
    printf("h2 addresses item can't be found in "
        "h1 addresses\n");
    goto errfin;
   }
  }
 }

 return 0;

errfin:
 if (mdata == ((void*)0)) {
  printf("following structures are not equal:\n");
  dump_hostent(ht1);
  dump_hostent(ht2);
 }

 return (-1);
}
