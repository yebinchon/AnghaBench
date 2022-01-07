
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ca_name; } ;
typedef TYPE_1__ umad_ca_t ;


 int DEBUG (char*,int ) ;
 int ENODEV ;
 int TRACE (char*,int ) ;
 int release_ca (TYPE_1__*) ;

int umad_release_ca(umad_ca_t * ca)
{
 int r;

 TRACE("ca_name %s", ca->ca_name);
 if (!ca)
  return -ENODEV;

 if ((r = release_ca(ca)) < 0)
  return r;

 DEBUG("releasing %s", ca->ca_name);
 return 0;
}
