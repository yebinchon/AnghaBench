
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_WARNING ;
 int _ (char*) ;
 int message (int ,int ,int ) ;
 int progname ;

extern void
message_try_help(void)
{


 message(V_WARNING, _("Try `%s --help' for more information."),
   progname);
 return;
}
