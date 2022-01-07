
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_status_data {int entries; } ;
typedef int * XML_Parser ;


 int ENOMEM ;
 int STAILQ_INIT (int *) ;
 int XML_Parse (int *,char*,int ,int) ;
 int * XML_ParserCreate (int *) ;
 int XML_ParserFree (int *) ;
 int XML_STATUS_ERROR ;
 int XML_SetCharacterDataHandler (int *,int ) ;
 int XML_SetElementHandler (int *,int ,int ) ;
 int XML_SetUserData (int *,struct mt_status_data*) ;
 int bzero (struct mt_status_data*,int) ;
 int errno ;
 int mt_char_handler ;
 int mt_end_element ;
 int mt_start_element ;
 int strlen (char*) ;

int
mt_get_status(char *xml_str, struct mt_status_data *status_data)
{
 XML_Parser parser;
 int retval;

 bzero(status_data, sizeof(*status_data));
 STAILQ_INIT(&status_data->entries);

 parser = XML_ParserCreate(((void*)0));
 if (parser == ((void*)0)) {
  errno = ENOMEM;
  return (XML_STATUS_ERROR);
 }

 XML_SetUserData(parser, status_data);
 XML_SetElementHandler(parser, mt_start_element, mt_end_element);
 XML_SetCharacterDataHandler(parser, mt_char_handler);

 retval = XML_Parse(parser, xml_str, strlen(xml_str), 1);
 XML_ParserFree(parser);
 return (retval);
}
