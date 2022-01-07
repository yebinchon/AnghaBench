
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct xml_data {int use_key; scalar_t__ date; int cdigest; int cdigtype; int calgo; int ctag; } ;
typedef int XML_Char ;


 int BIO_reset (int ) ;
 int exit (int ) ;
 scalar_t__ find_att (int const**,char*) ;
 int printf (char*) ;
 scalar_t__ verb ;
 scalar_t__ xml_convertdate (scalar_t__) ;

__attribute__((used)) static void
handle_keydigest(struct xml_data* data, const XML_Char **atts)
{
 data->use_key = 0;
 if(find_att(atts, "validFrom")) {
  time_t from = xml_convertdate(find_att(atts, "validFrom"));
  if(from == 0) {
   if(verb) printf("error: xml cannot be parsed\n");
   exit(0);
  }
  if(data->date < from)
   return;
 }
 if(find_att(atts, "validUntil")) {
  time_t until = xml_convertdate(find_att(atts, "validUntil"));
  if(until == 0) {
   if(verb) printf("error: xml cannot be parsed\n");
   exit(0);
  }
  if(data->date > until)
   return;
 }

 data->use_key = 1;
 (void)BIO_reset(data->ctag);
 (void)BIO_reset(data->calgo);
 (void)BIO_reset(data->cdigtype);
 (void)BIO_reset(data->cdigest);
}
