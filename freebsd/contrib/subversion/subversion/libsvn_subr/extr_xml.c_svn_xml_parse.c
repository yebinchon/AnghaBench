
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parser; int * error; } ;
typedef TYPE_1__ svn_xml_parser_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_XML_MALFORMED ;
 int * SVN_NO_ERROR ;
 int XML_ErrorString (int ) ;
 long XML_GetCurrentLineNumber (int ) ;
 int XML_GetErrorCode (int ) ;
 int XML_Parse (int ,char const*,int,int ) ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ,long) ;
 int svn_xml_free_parser (TYPE_1__*) ;

svn_error_t *
svn_xml_parse(svn_xml_parser_t *svn_parser,
              const char *buf,
              apr_size_t len,
              svn_boolean_t is_final)
{
  svn_error_t *err;
  int success;


  success = XML_Parse(svn_parser->parser, buf, (int) len, is_final);


  if (svn_parser->error)
    {

      svn_xml_free_parser(svn_parser);
      return svn_parser->error;
    }


  if (! success)
    {

      long line = XML_GetCurrentLineNumber(svn_parser->parser);

      err = svn_error_createf
        (SVN_ERR_XML_MALFORMED, ((void*)0),
         _("Malformed XML: %s at line %ld"),
         XML_ErrorString(XML_GetErrorCode(svn_parser->parser)), line);


      svn_xml_free_parser(svn_parser);
      return err;
    }

  return SVN_NO_ERROR;
}
