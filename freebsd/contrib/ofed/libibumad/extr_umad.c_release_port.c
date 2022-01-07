
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pkeys_size; int * pkeys; } ;
typedef TYPE_1__ umad_port_t ;


 int free (int *) ;

__attribute__((used)) static int release_port(umad_port_t * port)
{
 free(port->pkeys);
 port->pkeys = ((void*)0);
 port->pkeys_size = 0;
 return 0;
}
