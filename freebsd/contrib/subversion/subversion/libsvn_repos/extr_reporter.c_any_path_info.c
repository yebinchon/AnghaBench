
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int lookahead; } ;
typedef TYPE_1__ report_baton_t ;


 int relevant (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static svn_boolean_t
any_path_info(report_baton_t *b, const char *prefix)
{
  return relevant(b->lookahead, prefix, strlen(prefix));
}
