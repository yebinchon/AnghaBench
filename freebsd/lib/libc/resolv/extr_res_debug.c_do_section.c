
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef TYPE_1__* res_state ;
typedef scalar_t__ ns_sect ;
typedef int ns_rr ;
typedef scalar_t__ ns_opcode ;
typedef int ns_msg ;
struct TYPE_3__ {int pfcode; } ;
typedef int FILE ;


 scalar_t__ ENODEV ;
 scalar_t__ ENOSPC ;
 int GETSHORT (int,int const*) ;
 int NS_OPT_NSID ;
 int RES_PRF_HEAD1 ;
 scalar_t__ errno ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int free (char*) ;
 scalar_t__ isprint (int const) ;
 char* malloc (int) ;
 int ns_f_opcode ;
 scalar_t__ ns_msg_getflag (int ,int ) ;
 scalar_t__ ns_parserr (int *,scalar_t__,int,int *) ;
 int ns_rr_class (int ) ;
 char* ns_rr_name (int ) ;
 int* ns_rr_rdata (int ) ;
 int ns_rr_rdlen (int ) ;
 int ns_rr_ttl (int ) ;
 scalar_t__ ns_rr_type (int ) ;
 scalar_t__ ns_s_ar ;
 scalar_t__ ns_s_qd ;
 int ns_sprintrr (int *,int *,int *,int *,char*,int) ;
 scalar_t__ ns_t_opt ;
 char* p_class (int) ;
 char* p_section (scalar_t__,scalar_t__) ;
 char* p_type (scalar_t__) ;
 int putc (char,int *) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void
do_section(const res_state statp,
    ns_msg *handle, ns_sect section,
    int pflag, FILE *file)
{
 int n, sflag, rrnum;
 static int buflen = 2048;
 char *buf;
 ns_opcode opcode;
 ns_rr rr;




 sflag = (statp->pfcode & pflag);
 if (statp->pfcode && !sflag)
  return;

 buf = malloc(buflen);
 if (buf == ((void*)0)) {
  fprintf(file, ";; memory allocation failure\n");
  return;
 }

 opcode = (ns_opcode) ns_msg_getflag(*handle, ns_f_opcode);
 rrnum = 0;
 for (;;) {
  if (ns_parserr(handle, section, rrnum, &rr)) {
   if (errno != ENODEV)
    fprintf(file, ";; ns_parserr: %s\n",
     strerror(errno));
   else if (rrnum > 0 && sflag != 0 &&
     (statp->pfcode & RES_PRF_HEAD1))
    putc('\n', file);
   goto cleanup;
  }
  if (rrnum == 0 && sflag != 0 && (statp->pfcode & RES_PRF_HEAD1))
   fprintf(file, ";; %s SECTION:\n",
    p_section(section, opcode));
  if (section == ns_s_qd)
   fprintf(file, ";;\t%s, type = %s, class = %s\n",
    ns_rr_name(rr),
    p_type(ns_rr_type(rr)),
    p_class(ns_rr_class(rr)));
  else if (section == ns_s_ar && ns_rr_type(rr) == ns_t_opt) {
   u_int16_t optcode, optlen, rdatalen = ns_rr_rdlen(rr);
   u_int32_t ttl = ns_rr_ttl(rr);

   fprintf(file,
    "; EDNS: version: %u, udp=%u, flags=%04x\n",
    (ttl>>16)&0xff, ns_rr_class(rr), ttl&0xffff);

   while (rdatalen >= 4) {
    const u_char *cp = ns_rr_rdata(rr);
    int i;

    GETSHORT(optcode, cp);
    GETSHORT(optlen, cp);

    if (optcode == NS_OPT_NSID) {
     fputs("; NSID: ", file);
     if (optlen == 0) {
      fputs("; NSID\n", file);
     } else {
      fputs("; NSID: ", file);
      for (i = 0; i < optlen; i++)
       fprintf(file, "%02x ",
        cp[i]);
      fputs(" (",file);
      for (i = 0; i < optlen; i++)
       fprintf(file, "%c",
        isprint(cp[i])?
        cp[i] : '.');
      fputs(")\n", file);
     }
    } else {
     if (optlen == 0) {
      fprintf(file, "; OPT=%u\n",
       optcode);
     } else {
      fprintf(file, "; OPT=%u: ",
       optcode);
      for (i = 0; i < optlen; i++)
       fprintf(file, "%02x ",
        cp[i]);
      fputs(" (",file);
      for (i = 0; i < optlen; i++)
       fprintf(file, "%c",
        isprint(cp[i]) ?
         cp[i] : '.');
      fputs(")\n", file);
     }
    }
    rdatalen -= 4 + optlen;
   }
  } else {
   n = ns_sprintrr(handle, &rr, ((void*)0), ((void*)0),
     buf, buflen);
   if (n < 0) {
    if (errno == ENOSPC) {
     free(buf);
     buf = ((void*)0);
     if (buflen < 131072)
      buf = malloc(buflen += 1024);
     if (buf == ((void*)0)) {
      fprintf(file,
           ";; memory allocation failure\n");
           return;
     }
     continue;
    }
    fprintf(file, ";; ns_sprintrr: %s\n",
     strerror(errno));
    goto cleanup;
   }
   fputs(buf, file);
   fputc('\n', file);
  }
  rrnum++;
 }
 cleanup:
 if (buf != ((void*)0))
  free(buf);
}
