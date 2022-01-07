
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ svn_xml_parser_t ;


 int apr_pool_cleanup_run (int ,TYPE_1__*,int ) ;
 int parser_cleanup ;

void
svn_xml_free_parser(svn_xml_parser_t *svn_parser)
{
  apr_pool_cleanup_run(svn_parser->pool, svn_parser, parser_cleanup);
}
