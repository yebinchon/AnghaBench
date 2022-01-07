
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sockaddr_u ;
typedef int origin ;
struct TYPE_6__ {int s; } ;
struct TYPE_5__ {TYPE_2__ value; int attr; } ;
struct TYPE_7__ {TYPE_1__ source; int timestamp; } ;


 int CONF_SOURCE_NTPQ ;
 int DPRINTF (int,char*) ;
 int FALSE ;
 TYPE_3__ cfgt ;
 int estrdup (char*) ;
 int init_syntax_tree (TYPE_3__*) ;
 int lex_drop_stack () ;
 int lex_init_stack (char*,int *) ;
 int save_and_apply_config_tree (int ) ;
 int snprintf (char*,int,char*,char*) ;
 char* stoa (int *) ;
 int time (int *) ;
 int yyparse () ;

void
config_remotely(
 sockaddr_u * remote_addr
 )
{
 char origin[128];

 snprintf(origin, sizeof(origin), "remote config from %s",
   stoa(remote_addr));
 lex_init_stack(origin, ((void*)0));
 init_syntax_tree(&cfgt);
 yyparse();
 lex_drop_stack();

 cfgt.source.attr = CONF_SOURCE_NTPQ;
 cfgt.timestamp = time(((void*)0));
 cfgt.source.value.s = estrdup(stoa(remote_addr));

 DPRINTF(1, ("Finished Parsing!!\n"));

 save_and_apply_config_tree(FALSE);
}
