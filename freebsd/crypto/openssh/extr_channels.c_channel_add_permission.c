
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct permission_set {scalar_t__ all_permitted; } ;


 int FORWARD_LOCAL ;
 int debug (char*,int ,char*,int) ;
 int fwd_ident (int,int) ;
 int permission_set_add (struct ssh*,int,int,char*,int,char*,int *,int,int *) ;
 struct permission_set* permission_set_get (struct ssh*,int) ;

void
channel_add_permission(struct ssh *ssh, int who, int where,
    char *host, int port)
{
 int local = where == FORWARD_LOCAL;
 struct permission_set *pset = permission_set_get(ssh, where);

 debug("allow %s forwarding to host %s port %d",
     fwd_ident(who, where), host, port);




 permission_set_add(ssh, who, where,
     local ? host : 0, local ? port : 0,
     local ? ((void*)0) : host, ((void*)0), local ? 0 : port, ((void*)0));
 pset->all_permitted = 0;
}
