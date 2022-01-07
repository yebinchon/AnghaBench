
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct atm_port_info {int dummy; } ;
struct ccport {struct atm_port_info param; } ;
struct ccdata {int dummy; } ;


 int ENOENT ;
 struct ccport* find_port (struct ccdata*,int ) ;

int
cc_port_get_param(struct ccdata *cc, u_int portno,
    struct atm_port_info *param)
{
 struct ccport *port;

 if ((port = find_port(cc, portno)) == ((void*)0))
  return (ENOENT);

 *param = port->param;
 return (0);
}
