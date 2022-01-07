
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fst_read_next_text_param (char const*,char*,size_t,char**) ;

int fst_parse_detach_command(const char *cmd, char *ifname, size_t ifname_size)
{
 char *endp;

 return fst_read_next_text_param(cmd, ifname, ifname_size, &endp);
}
