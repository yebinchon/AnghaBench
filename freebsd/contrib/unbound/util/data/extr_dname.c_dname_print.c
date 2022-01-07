
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct sldns_buffer {int dummy; } ;
typedef int FILE ;


 scalar_t__ LABEL_IS_PTR (scalar_t__) ;
 scalar_t__ LDNS_MAX_LABELLEN ;
 int PTR_OFFSET (scalar_t__,scalar_t__) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 scalar_t__* sldns_buffer_at (struct sldns_buffer*,int ) ;
 int * stdout ;

void dname_print(FILE* out, struct sldns_buffer* pkt, uint8_t* dname)
{
 uint8_t lablen;
 if(!out) out = stdout;
 if(!dname) return;

 lablen = *dname++;
 if(!lablen)
  fputc('.', out);
 while(lablen) {
  if(LABEL_IS_PTR(lablen)) {

   if(!pkt) {
    fputs("??compressionptr??", out);
    return;
   }
   dname = sldns_buffer_at(pkt, PTR_OFFSET(lablen, *dname));
   lablen = *dname++;
   continue;
  }
  if(lablen > LDNS_MAX_LABELLEN) {
   fputs("??extendedlabel??", out);
   return;
  }
  while(lablen--)
   fputc((int)*dname++, out);
  fputc('.', out);
  lablen = *dname++;
 }
}
