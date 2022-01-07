
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {int * zonefile; } ;


 int free (int *) ;
 int log_err (char*) ;
 int * strdup (char*) ;

int
auth_zone_set_zonefile(struct auth_zone* z, char* zonefile)
{
 if(z->zonefile) free(z->zonefile);
 if(zonefile == ((void*)0)) {
  z->zonefile = ((void*)0);
 } else {
  z->zonefile = strdup(zonefile);
  if(!z->zonefile) {
   log_err("malloc failure");
   return 0;
  }
 }
 return 1;
}
