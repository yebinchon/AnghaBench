
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int sockaddr_u ;
typedef int l_fp ;
typedef int bv ;
typedef int bn ;
typedef int b ;
typedef int FILE ;





 int ISREFCLOCKADR (int *) ;

 int MAXVALLEN ;
 int MAXVARLEN ;





 int UNUSED_ARG (int) ;
 int atoascii (char*,int,char*,int) ;
 int decodearr (char*,int*,int *,int) ;
 int decodenetnum (char*,int *) ;
 int decodets (char*,int *) ;
 int decodeuint (char*,int*) ;
 int endoutput (int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ nextvar (size_t*,char const**,char**,char**) ;
 char* nntohost (int *) ;
 int output (int *,char*,char*) ;
 int outputarr (int *,char*,int,int *) ;
 char* prettydate (int *) ;
 char* refnumtoa (int *) ;
 int snprintf (char*,int,char*,int) ;
 int startoutput () ;
 char* statustoa (int,int) ;
 int stderr ;
 char* stoa (int *) ;
 int strlen (char*) ;
 char* tstflags (int) ;
 int varfmt (char*) ;

__attribute__((used)) static void
cookedprint(
 int datatype,
 size_t length,
 const char *data,
 int status,
 int quiet,
 FILE *fp
 )
{
 char *name;
 char *value;
 char output_raw;
 int fmt;
 l_fp lfp;
 sockaddr_u hval;
 u_long uval;
 int narr;
 size_t len;
 l_fp lfparr[8];
 char b[12];
 char bn[2 * MAXVARLEN];
 char bv[2 * MAXVALLEN];

 UNUSED_ARG(datatype);

 if (!quiet)
  fprintf(fp, "status=%04x %s,\n", status,
   statustoa(datatype, status));

 startoutput();
 while (nextvar(&length, &data, &name, &value)) {
  fmt = varfmt(name);
  output_raw = 0;
  switch (fmt) {

  case 130:
   output_raw = '*';
   break;

  case 128:
   if (!value || !decodets(value, &lfp))
    output_raw = '?';
   else
    output(fp, name, prettydate(&lfp));
   break;

  case 134:
  case 132:
   if (!value || !decodenetnum(value, &hval)) {
    output_raw = '?';
   } else if (fmt == 134){
    output(fp, name, nntohost(&hval));
   } else {
    output(fp, name, stoa(&hval));
   }
   break;

  case 129:
   if (!value) {
    output_raw = '?';
   } else if (decodenetnum(value, &hval)) {
    if (ISREFCLOCKADR(&hval))
     output(fp, name,
            refnumtoa(&hval));
    else
     output(fp, name, stoa(&hval));
   } else if (strlen(value) <= 4) {
    output(fp, name, value);
   } else {
    output_raw = '?';
   }
   break;

  case 133:
   if (!value || !decodeuint(value, &uval) || uval > 3) {
    output_raw = '?';
   } else {
    b[0] = (0x2 & uval)
        ? '1'
        : '0';
    b[1] = (0x1 & uval)
        ? '1'
        : '0';
    b[2] = '\0';
    output(fp, name, b);
   }
   break;

  case 131:
   if (!value || !decodeuint(value, &uval)) {
    output_raw = '?';
   } else {
    snprintf(b, sizeof(b), "%03lo", uval);
    output(fp, name, b);
   }
   break;

  case 136:
   if (!value || !decodearr(value, &narr, lfparr, 8))
    output_raw = '?';
   else
    outputarr(fp, name, narr, lfparr);
   break;

  case 135:
   if (!value || !decodeuint(value, &uval))
    output_raw = '?';
   else
    output(fp, name, tstflags(uval));
   break;

  default:
   fprintf(stderr, "Internal error in cookedprint, %s=%s, fmt %d\n",
    name, value, fmt);
   output_raw = '?';
   break;
  }

  if (output_raw != 0) {

   atoascii(name, MAXVARLEN, bn, sizeof(bn));
   if (output_raw != '*') {
    atoascii(value, MAXVALLEN,
      bv, sizeof(bv) - 1);
    len = strlen(bv);
    bv[len] = output_raw;
    bv[len+1] = '\0';
   } else {
    atoascii(value, MAXVALLEN,
      bv, sizeof(bv));
   }
   output(fp, bn, bv);
  }
 }
 endoutput(fp);
}
