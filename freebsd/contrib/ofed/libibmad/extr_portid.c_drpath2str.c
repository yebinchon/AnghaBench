
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drslid; int drdlid; int* p; int cnt; } ;
typedef TYPE_1__ ib_dr_path_t ;


 int snprintf (char*,size_t,char*,int,...) ;

char *drpath2str(ib_dr_path_t * path, char *dstr, size_t dstr_size)
{
 int i = 0;
 int rc = snprintf(dstr, dstr_size, "slid %u; dlid %u; %d",
     path->drslid, path->drdlid, path->p[0]);
 if (rc >= (int)dstr_size)
  return dstr;
 for (i = 1; i <= path->cnt; i++) {
  rc += snprintf(dstr + rc, dstr_size - rc, ",%d", path->p[i]);
  if (rc >= (int)dstr_size)
   break;
 }
 return (dstr);
}
