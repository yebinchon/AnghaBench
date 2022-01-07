
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_7__ {char* data; scalar_t__ size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 char SHADOW ;
 char TCERR ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static int
cdbget(DB *capdbp, char **bp, const char *name)
{
 DBT key, data;
 char *namebuf;

 namebuf = strdup(name);
 if (namebuf == ((void*)0))
  return (-2);
 key.data = namebuf;
 key.size = strlen(namebuf);

 for (;;) {

  switch(capdbp->get(capdbp, &key, &data, 0)) {
  case -1:
   free(namebuf);
   return (-2);
  case 1:
   free(namebuf);
   return (-1);
  }


  if (((char *)data.data)[0] != SHADOW)
   break;

  key.data = (char *)data.data + 1;
  key.size = data.size - 1;
 }

 *bp = (char *)data.data + 1;
 free(namebuf);
 return (((char *)(data.data))[0] == TCERR ? 1 : 0);
}
