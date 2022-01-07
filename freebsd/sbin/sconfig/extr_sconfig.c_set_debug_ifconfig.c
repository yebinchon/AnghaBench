
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* chan_name ;
 int sprintf (char*,char*,char*,char*) ;
 int system (char*) ;

__attribute__((used)) static void
set_debug_ifconfig (int on)
{
 char buf [64];
 sprintf (buf, "ifconfig %s %sdebug 2>/dev/null", chan_name,
   on ? "" : "-");
 system (buf);
}
