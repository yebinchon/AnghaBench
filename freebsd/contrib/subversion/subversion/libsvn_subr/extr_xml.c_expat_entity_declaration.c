
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parser; } ;
typedef TYPE_1__ svn_xml_parser_t ;
typedef int XML_Char ;


 int XML_StopParser (int ,int ) ;

__attribute__((used)) static void expat_entity_declaration(void *userData,
                                     const XML_Char *entityName,
                                     int is_parameter_entity,
                                     const XML_Char *value,
                                     int value_length,
                                     const XML_Char *base,
                                     const XML_Char *systemId,
                                     const XML_Char *publicId,
                                     const XML_Char *notationName)
{
  svn_xml_parser_t *svn_parser = userData;


  XML_StopParser(svn_parser->parser, 0 );
}
