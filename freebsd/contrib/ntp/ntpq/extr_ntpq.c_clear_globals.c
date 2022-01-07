
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ havehost ;
 scalar_t__ numassoc ;
 scalar_t__ numcmds ;
 scalar_t__ numhosts ;
 int * server_entry ;
 scalar_t__ showhostnames ;

void clear_globals(void)
{
 extern int ntp_optind;
 showhostnames = 0;
 ntp_optind = 0;
 server_entry = ((void*)0);
 havehost = 0;
 numassoc = 0;
 numcmds = 0;
 numhosts = 0;
}
