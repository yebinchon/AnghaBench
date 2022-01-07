
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct xml_data {void* ds; void* cdigest; void* cdigtype; void* czone; void* calgo; void* ctag; int date; int parser; } ;
typedef int buf ;
typedef int XML_Parser ;


 void* BIO_new (int ) ;
 int BIO_s_mem () ;
 scalar_t__ BIO_write (void*,char*,int) ;
 int XML_SetCharacterDataHandler (int ,int ) ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetEntityDeclHandler (int ,int ) ;
 int XML_SetUserData (int ,struct xml_data*) ;
 char* ctime (int *) ;
 int exit (int ) ;
 int memset (struct xml_data*,int ,int) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ verb ;
 int xml_charhandle ;
 int xml_endelem ;
 int xml_entitydeclhandler ;
 int xml_startelem ;

__attribute__((used)) static void
xml_parse_setup(XML_Parser parser, struct xml_data* data, time_t now)
{
 char buf[1024];
 memset(data, 0, sizeof(*data));
 XML_SetUserData(parser, data);
 data->parser = parser;
 data->date = now;
 data->ds = BIO_new(BIO_s_mem());
 data->ctag = BIO_new(BIO_s_mem());
 data->czone = BIO_new(BIO_s_mem());
 data->calgo = BIO_new(BIO_s_mem());
 data->cdigtype = BIO_new(BIO_s_mem());
 data->cdigest = BIO_new(BIO_s_mem());
 if(!data->ds || !data->ctag || !data->calgo || !data->czone ||
  !data->cdigtype || !data->cdigest) {
  if(verb) printf("out of memory\n");
  exit(0);
 }
 snprintf(buf, sizeof(buf), "; created by unbound-anchor on %s",
  ctime(&now));
 if(BIO_write(data->ds, buf, (int)strlen(buf)) < 0) {
  if(verb) printf("out of memory\n");
  exit(0);
 }
 XML_SetEntityDeclHandler(parser, xml_entitydeclhandler);
 XML_SetElementHandler(parser, xml_startelem, xml_endelem);
 XML_SetCharacterDataHandler(parser, xml_charhandle);
}
