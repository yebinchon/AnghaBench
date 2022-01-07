
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_bootstrap_info {scalar_t__ uri; } ;


 scalar_t__ os_strdup (char const*) ;

__attribute__((used)) static int dpp_clone_uri(struct dpp_bootstrap_info *bi, const char *uri)
{
 bi->uri = os_strdup(uri);
 return bi->uri ? 0 : -1;
}
