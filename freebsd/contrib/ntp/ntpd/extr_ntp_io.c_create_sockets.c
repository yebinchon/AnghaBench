
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int DPRINTF (int,char*) ;
 int FD_ZERO (int *) ;
 int activefds ;
 int create_wildcards (int ) ;
 scalar_t__ maxactivefd ;
 int ninterfaces ;
 int set_reuseaddr (int ) ;
 int update_interfaces (int ,int *,int *) ;

__attribute__((used)) static int
create_sockets(
 u_short port
 )
{




 maxactivefd = 0;
 FD_ZERO(&activefds);


 DPRINTF(2, ("create_sockets(%d)\n", port));

 create_wildcards(port);

 update_interfaces(port, ((void*)0), ((void*)0));





 set_reuseaddr(0);

 DPRINTF(2, ("create_sockets: Total interfaces = %d\n", ninterfaces));

 return ninterfaces;
}
