
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct xml_data {int num_keys; int * ds; int * cdigest; int * cdigtype; int * calgo; int * ctag; int * czone; int tag; } ;
typedef int XML_Parser ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_get_mem_data (int *,char**) ;
 int BIO_seek (int *,int ) ;
 char* XML_ErrorString (int ) ;
 int XML_GetErrorCode (int ) ;
 int XML_Parse (int ,char*,int,int) ;
 int XML_ParserCreate (int *) ;
 int XML_ParserFree (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int free (int ) ;
 int fwrite (char*,size_t,int,int ) ;
 int printf (char*,...) ;
 int stderr ;
 int stdout ;
 int verb ;
 int xml_parse_setup (int ,struct xml_data*,int ) ;

__attribute__((used)) static BIO*
xml_parse(BIO* xml, time_t now)
{
 char* pp;
 int len;
 XML_Parser parser;
 struct xml_data data;

 parser = XML_ParserCreate(((void*)0));
 if(!parser) {
  if(verb) printf("could not XML_ParserCreate\n");
  exit(0);
 }


 xml_parse_setup(parser, &data, now);


 (void)BIO_seek(xml, 0);
 len = (int)BIO_get_mem_data(xml, &pp);
 if(!len || !pp) {
  if(verb) printf("out of memory\n");
  exit(0);
 }
 if(!XML_Parse(parser, pp, len, 1 )) {
  const char *e = XML_ErrorString(XML_GetErrorCode(parser));
  if(verb) printf("XML_Parse failure %s\n", e?e:"");
  exit(0);
 }


 if(verb) printf("XML was parsed successfully, %d keys\n",
   data.num_keys);
 free(data.tag);
 XML_ParserFree(parser);

 if(verb >= 4) {
  (void)BIO_seek(data.ds, 0);
  len = BIO_get_mem_data(data.ds, &pp);
  printf("got DS bio %d: '", len);
  if(!fwrite(pp, (size_t)len, 1, stdout))

   fprintf(stderr, "error writing to stdout\n");
  printf("'\n");
 }
 BIO_free(data.czone);
 BIO_free(data.ctag);
 BIO_free(data.calgo);
 BIO_free(data.cdigtype);
 BIO_free(data.cdigest);

 if(data.num_keys == 0) {

  BIO_free(data.ds);
  return ((void*)0);
 } else {
  return data.ds;
 }
}
