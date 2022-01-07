
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_auth {struct config_auth* zonefile; int allow_notify; int urls; int masters; struct config_auth* name; } ;


 int config_delstrlist (int ) ;
 int free (struct config_auth*) ;

void
config_delauth(struct config_auth* p)
{
 if(!p) return;
 free(p->name);
 config_delstrlist(p->masters);
 config_delstrlist(p->urls);
 config_delstrlist(p->allow_notify);
 free(p->zonefile);
 free(p);
}
