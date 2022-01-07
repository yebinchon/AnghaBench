
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_stub {int addrs; int hosts; struct config_stub* name; } ;


 int config_delstrlist (int ) ;
 int free (struct config_stub*) ;

void
config_delstub(struct config_stub* p)
{
 if(!p) return;
 free(p->name);
 config_delstrlist(p->hosts);
 config_delstrlist(p->addrs);
 free(p);
}
