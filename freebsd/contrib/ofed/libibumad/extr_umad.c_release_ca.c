
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numports; int ** ports; } ;
typedef TYPE_1__ umad_ca_t ;


 int free (int *) ;
 int release_port (int *) ;

__attribute__((used)) static int release_ca(umad_ca_t * ca)
{
 int i;

 for (i = 0; i <= ca->numports; i++) {
  if (!ca->ports[i])
   continue;
  release_port(ca->ports[i]);
  free(ca->ports[i]);
  ca->ports[i] = ((void*)0);
 }
 return 0;
}
