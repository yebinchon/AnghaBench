
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* filter_list (char const*,char const*,int ) ;

char *
match_filter_whitelist(const char *proposal, const char *filter)
{
 return filter_list(proposal, filter, 0);
}
