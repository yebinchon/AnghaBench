
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int endpt ;


 int free (int *) ;
 int io_completion_port_remove_interface (int *) ;

__attribute__((used)) static void
delete_interface(
 endpt *ep
 )
{



 free(ep);
}
