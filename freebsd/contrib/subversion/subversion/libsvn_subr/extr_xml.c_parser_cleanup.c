
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parser; } ;
typedef TYPE_1__ svn_xml_parser_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int XML_ParserFree (int *) ;

__attribute__((used)) static apr_status_t parser_cleanup(void *data)
{
  svn_xml_parser_t *svn_parser = data;


  if (svn_parser->parser)
    {
      XML_ParserFree(svn_parser->parser);
      svn_parser->parser = ((void*)0);
    }
  return APR_SUCCESS;
}
