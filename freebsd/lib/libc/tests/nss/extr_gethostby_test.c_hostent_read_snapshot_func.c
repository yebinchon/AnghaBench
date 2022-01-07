
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hostent {int h_addrtype; int h_length; int h_addr_list; int h_aliases; int * h_name; } ;
struct TYPE_5__ {int sl_str; } ;
typedef TYPE_1__ StringList ;


 int ATF_REQUIRE (int ) ;
 char* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int free_hostent (struct hostent*) ;
 int hostent_read_snapshot_addr (char*,unsigned char*,int) ;
 int memset (struct hostent*,int ,int) ;
 int printf (char*,char*) ;
 int sl_add (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
hostent_read_snapshot_func(struct hostent *ht, char *line)
{
 StringList *sl1, *sl2;
 char *s, *ps, *ts;
 int i, rv;





 rv = 0;
 i = 0;
 sl1 = sl2 = ((void*)0);
 ps = line;
 memset(ht, 0, sizeof(struct hostent));
 while ((s = strsep(&ps, " ")) != ((void*)0)) {
  switch (i) {
  case 0:
   ht->h_name = strdup(s);
   ATF_REQUIRE(ht->h_name != ((void*)0));
   break;

  case 1:
   ht->h_addrtype = (int)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;

  case 2:
   ht->h_length = (int)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;

  case 3:
   if (sl1 == ((void*)0)) {
    if (strcmp(s, "(null)") == 0)
     return (0);

    sl1 = sl_init();
    ATF_REQUIRE(sl1 != ((void*)0));

    if (strcmp(s, "noaliases") != 0) {
     ts = strdup(s);
     ATF_REQUIRE(ts != ((void*)0));
     sl_add(sl1, ts);
    }
   } else {
    if (strcmp(s, ":") == 0)
     ++i;
    else {
     ts = strdup(s);
     ATF_REQUIRE(ts != ((void*)0));
     sl_add(sl1, ts);
    }
   }
   break;

  case 4:
   if (sl2 == ((void*)0)) {
    if (strcmp(s, "(null)") == 0)
     return (0);

    sl2 = sl_init();
    ATF_REQUIRE(sl2 != ((void*)0));

    if (strcmp(s, "noaddrs") != 0) {
     ts = calloc(1, ht->h_length);
     ATF_REQUIRE(ts != ((void*)0));
     rv = hostent_read_snapshot_addr(s,
         (unsigned char *)ts,
         ht->h_length);
     sl_add(sl2, ts);
     if (rv != 0)
      goto fin;
    }
   } else {
    ts = calloc(1, ht->h_length);
    ATF_REQUIRE(ts != ((void*)0));
    rv = hostent_read_snapshot_addr(s,
        (unsigned char *)ts, ht->h_length);
    sl_add(sl2, ts);
    if (rv != 0)
     goto fin;
   }
   break;
  default:
   break;
  }

  if (i != 3 && i != 4)
   ++i;
 }

fin:
 if (sl1 != ((void*)0)) {
  sl_add(sl1, ((void*)0));
  ht->h_aliases = sl1->sl_str;
 }
 if (sl2 != ((void*)0)) {
  sl_add(sl2, ((void*)0));
  ht->h_addr_list = sl2->sl_str;
 }

 if ((i != 4) || (rv != 0)) {
  free_hostent(ht);
  memset(ht, 0, sizeof(struct hostent));
  return (-1);
 }


 free(sl1);
 free(sl2);
 return (0);
}
