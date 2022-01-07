
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int raw_printf (int *,char*,...) ;

__attribute__((used)) static void output_hex_blob(FILE *out, const void *pBlob, int nBlob){
  int i;
  char *zBlob = (char *)pBlob;
  raw_printf(out,"X'");
  for(i=0; i<nBlob; i++){ raw_printf(out,"%02x",zBlob[i]&0xff); }
  raw_printf(out,"'");
}
