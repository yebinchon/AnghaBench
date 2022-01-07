
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpcent {int r_number; int r_aliases; TYPE_1__* r_name; } ;
struct TYPE_5__ {int sl_str; } ;
typedef TYPE_1__ StringList ;


 int ATF_REQUIRE (int ) ;
 int free (TYPE_1__*) ;
 int memset (struct rpcent*,int ,int) ;
 int printf (char*,char*) ;
 int sl_add (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
rpcent_read_snapshot_func(struct rpcent *rpc, char *line)
{
 StringList *sl;
 char *s, *ps, *ts;
 int i;

 printf("1 line read from snapshot:\n%s\n", line);

 i = 0;
 sl = ((void*)0);
 ps = line;
 memset(rpc, 0, sizeof(struct rpcent));
 while ((s = strsep(&ps, " ")) != ((void*)0)) {
  switch (i) {
  case 0:
    rpc->r_name = strdup(s);
    ATF_REQUIRE(rpc->r_name != ((void*)0));
   break;

  case 1:
   rpc->r_number = (int)strtol(s, &ts, 10);
   if (*ts != '\0') {
    free(rpc->r_name);
    return (-1);
   }
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
  i++;
 }

 if (i < 3) {
  free(rpc->r_name);
  memset(rpc, 0, sizeof(struct rpcent));
  return (-1);
 }

 sl_add(sl, ((void*)0));
 rpc->r_aliases = sl->sl_str;


 free(sl);
 return (0);
}
