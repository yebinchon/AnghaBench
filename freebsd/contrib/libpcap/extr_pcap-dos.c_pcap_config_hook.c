
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_tab ;
 int parse_config_table (int ,int *,char const*,char const*) ;

int pcap_config_hook (const char *keyword, const char *value)
{
  return parse_config_table (debug_tab, ((void*)0), keyword, value);
}
