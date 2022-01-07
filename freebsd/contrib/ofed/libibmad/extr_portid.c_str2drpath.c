
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int cnt; int drdlid; int drslid; scalar_t__* p; } ;
typedef TYPE_1__ ib_dr_path_t ;


 int DEBUG (char*,char*) ;
 scalar_t__ atoi (char*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

int str2drpath(ib_dr_path_t * path, char *routepath, int drslid, int drdlid)
{
 char *s, *str;
 char *tmp;

 path->cnt = -1;

 if (!routepath || !(tmp = strdup(routepath)))
  goto Exit;

 DEBUG("DR str: %s", routepath);

 str = tmp;

 while (str && *str) {
  if ((s = strchr(str, ',')))
   *s = 0;
  path->p[++path->cnt] = (uint8_t) atoi(str);
  if (!s)
   break;
  str = s + 1;
 }
 free(tmp);

Exit:
 path->drdlid = drdlid ? drdlid : 0xffff;
 path->drslid = drslid ? drslid : 0xffff;

 return path->cnt;
}
