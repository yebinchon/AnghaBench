
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct servent {int s_aliases; TYPE_1__* s_proto; TYPE_1__* s_name; int s_port; } ;
struct TYPE_5__ {int sl_str; } ;
typedef TYPE_1__ StringList ;


 int ATF_REQUIRE (int ) ;
 int free (TYPE_1__*) ;
 int htons (int) ;
 int memset (struct servent*,int ,int) ;
 int printf (char*,char*) ;
 int sl_add (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
servent_read_snapshot_func(struct servent *serv, char *line)
{
 StringList *sl;
 char *s, *ps, *ts;
 int i;

 printf("1 line read from snapshot:\n%s\n", line);

 i = 0;
 sl = ((void*)0);
 ps = line;
 memset(serv, 0, sizeof(struct servent));
 while ( (s = strsep(&ps, " ")) != ((void*)0)) {
  switch (i) {
   case 0:
    serv->s_name = strdup(s);
    ATF_REQUIRE(serv->s_name != ((void*)0));
   break;

   case 1:
    serv->s_port = htons(
     (int)strtol(s, &ts, 10));
    if (*ts != '\0') {
     free(serv->s_name);
     return (-1);
    }
   break;

   case 2:
    serv->s_proto = strdup(s);
    ATF_REQUIRE(serv->s_proto != ((void*)0));
   break;

   default:
    if (sl == ((void*)0)) {
     if (strcmp(s, "(null)") == 0)
      return (0);

     sl = sl_init();
     ATF_REQUIRE(sl != ((void*)0));

     if (strcmp(s, "noaliases") != 0) {
      ts = strdup(s);
      ATF_REQUIRE(ts != ((void*)0));
      sl_add(sl, ts);
     }
    } else {
     ts = strdup(s);
     ATF_REQUIRE(ts != ((void*)0));
     sl_add(sl, ts);
    }
   break;
  }
  ++i;
 }

 if (i < 3) {
  free(serv->s_name);
  free(serv->s_proto);
  memset(serv, 0, sizeof(struct servent));
  return (-1);
 }

 sl_add(sl, ((void*)0));
 serv->s_aliases = sl->sl_str;


 free(sl);
 return (0);
}
