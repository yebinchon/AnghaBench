
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int FILE ;


 int EOF ;
 int LDNS_MAX_PACKETLEN ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 size_t hexstr2bin (char*,int,scalar_t__*,int ,int) ;
 int isascii (int) ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;
 int perror (char*) ;
 int * stdin ;
 scalar_t__ strncmp (char*,char*,int) ;
 int xfree (scalar_t__*) ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static size_t
packetbuffromfile(char *filename, uint8_t *wire)
{
 FILE *fp = ((void*)0);
 int c;






 int state = 0;
 uint8_t *hexbuf = xmalloc(LDNS_MAX_PACKETLEN);
 int hexbufpos = 0;
 size_t wirelen;

 if (strncmp(filename, "-", 2) == 0) {
  fp = stdin;
 } else {
  fp = fopen(filename, "r");
 }
 if (fp == ((void*)0)) {
  perror("Unable to open file for reading");
  xfree(hexbuf);
  return 0;
 }



 c = fgetc(fp);
 while (c != EOF && hexbufpos < LDNS_MAX_PACKETLEN) {
  if (state < 2 && !isascii(c)) {

   state = 2;
  }
  switch (state) {
   case 0:
    if ( (c >= '0' && c <= '9') ||
     (c >= 'a' && c <= 'f') ||
     (c >= 'A' && c <= 'F') )
    {
     hexbuf[hexbufpos] = (uint8_t) c;
     hexbufpos++;
    } else if (c == ';') {
     state = 1;
    } else if (c == ' ' || c == '\t' || c == '\n') {

    }
    break;
   case 1:
    if (c == '\n' || c == EOF) {
     state = 0;
    }
    break;
   case 2:
    hexbuf[hexbufpos] = (uint8_t) c;
    hexbufpos++;
    break;
  }
  c = fgetc(fp);
 }

 if (c == EOF) {
 }
 if (hexbufpos >= LDNS_MAX_PACKETLEN) {

 }


 if (hexbufpos % 2 != 0) {
  hexbuf[hexbufpos] = (uint8_t) '0';
  hexbufpos++;
 }

 if (state < 2) {
  wirelen = hexstr2bin((char *) hexbuf,
       hexbufpos,
       wire,
       0,
       LDNS_MAX_PACKETLEN);
 } else {
  memcpy(wire, hexbuf, (size_t) hexbufpos);
  wirelen = (size_t) hexbufpos;
 }
 if (fp != stdin) {
  fclose(fp);
 }
 xfree(hexbuf);
 return wirelen;
}
