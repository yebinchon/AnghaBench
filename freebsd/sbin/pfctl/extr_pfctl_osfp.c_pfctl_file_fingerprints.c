
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_subtype_nm; int fp_version_nm; int fp_class_nm; int fp_enflags; } ;
struct pf_osfp_ioctl {int fp_ttl; int fp_flags; int fp_wsize; int fp_psize; int fp_wscale; int fp_mss; int fp_optcnt; TYPE_1__ fp_os; int fp_tcpopts; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
typedef int pf_tcpopts_t ;
typedef int fp ;
typedef int FILE ;


 scalar_t__ GET_INT (int,int*,char*,int,int) ;
 scalar_t__ GET_STR (char*,char*,int) ;
 int PF_OPT_NOACTION ;
 int PF_OPT_VERBOSE2 ;
 int PF_OSFP_DF ;
 int PF_OSFP_GENERIC ;
 int PF_OSFP_INET6 ;
 int PF_OSFP_MSS_DC ;
 int PF_OSFP_MSS_MOD ;
 int PF_OSFP_NODETAIL ;
 int PF_OSFP_PSIZE_DC ;
 int PF_OSFP_PSIZE_MOD ;
 int PF_OSFP_TS0 ;
 int PF_OSFP_WSCALE_DC ;
 int PF_OSFP_WSCALE_MOD ;
 int PF_OSFP_WSIZE_DC ;
 int PF_OSFP_WSIZE_MOD ;
 int PF_OSFP_WSIZE_MSS ;
 int PF_OSFP_WSIZE_MTU ;




 int add_fingerprint (int,int,struct pf_osfp_ioctl*) ;
 int classes ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int fingerprint_count ;
 int fprintf (int ,char*,char const*,int) ;
 int free (char*) ;
 scalar_t__ get_tcpopts (char const*,int,char*,int *,int*,int*,int*,int*,int*,int*) ;
 scalar_t__ isspace (char) ;
 int memset (struct pf_osfp_ioctl*,int ,int) ;
 int pfctl_clear_fingerprints (int,int) ;
 int pfctl_flush_my_fingerprints (int *) ;
 int * pfctl_fopen (char const*,char*) ;
 int printf (char*,int) ;
 int stderr ;
 int strlcpy (int ,char*,int) ;
 int warn (char*,char const*) ;

int
pfctl_file_fingerprints(int dev, int opts, const char *fp_filename)
{
 FILE *in;
 char *line;
 size_t len;
 int i, lineno = 0;
 int window, w_mod, ttl, df, psize, p_mod, mss, mss_mod, wscale,
     wscale_mod, optcnt, ts0;
 pf_tcpopts_t packed_tcpopts;
 char *class, *version, *subtype, *desc, *tcpopts;
 struct pf_osfp_ioctl fp;

 pfctl_flush_my_fingerprints(&classes);

 if ((in = pfctl_fopen(fp_filename, "r")) == ((void*)0)) {
  warn("%s", fp_filename);
  return (1);
 }
 class = version = subtype = desc = tcpopts = ((void*)0);

 if ((opts & PF_OPT_NOACTION) == 0)
  pfctl_clear_fingerprints(dev, opts);

 while ((line = fgetln(in, &len)) != ((void*)0)) {
  lineno++;
  if (class)
   free(class);
  if (version)
   free(version);
  if (subtype)
   free(subtype);
  if (desc)
   free(desc);
  if (tcpopts)
   free(tcpopts);
  class = version = subtype = desc = tcpopts = ((void*)0);
  memset(&fp, 0, sizeof(fp));


  for (i = 0; i < len; i++)
   if (line[i] == '#') {
    len = i;
    break;
   }

  while (len > 0 && isspace(line[len - 1]))
   len--;
  while (len > 0 && isspace(line[0])) {
   len--;
   line++;
  }
  if (len == 0)
   continue;
  if (get_int(&line, &len, &window, &w_mod, "window size", 0x01|0x02|0x04| 0x08, 0xffff, fp_filename, lineno) ||

      get_int(&line, &len, &ttl, ((void*)0), "ttl", 0, 0xff, fp_filename, lineno) ||
      get_int(&line, &len, &df, ((void*)0), "don't fragment frag", 0, 1, fp_filename, lineno) ||
      get_int(&line, &len, &psize, &p_mod, "overall packet size", 0x08|0x01, 8192, fp_filename, lineno) ||

      get_str(&line, &len, &tcpopts, "TCP Options", 1, fp_filename, lineno) ||
      get_str(&line, &len, &class, "OS class", 1, fp_filename, lineno) ||
      get_str(&line, &len, &version, "OS version", 0, fp_filename, lineno) ||
      get_str(&line, &len, &subtype, "OS subtype", 0, fp_filename, lineno) ||
      get_str(&line, &len, &desc, "OS description", 2, fp_filename, lineno))
   continue;
  if (get_tcpopts(fp_filename, lineno, tcpopts, &packed_tcpopts,
      &optcnt, &mss, &mss_mod, &wscale, &wscale_mod, &ts0))
   continue;
  if (len != 0) {
   fprintf(stderr, "%s:%d excess field\n", fp_filename,
       lineno);
   continue;
  }

  fp.fp_ttl = ttl;
  if (df)
   fp.fp_flags |= PF_OSFP_DF;
  switch (w_mod) {
  case 0:
   break;
  case 0x01:
   fp.fp_flags |= PF_OSFP_WSIZE_DC;
   break;
  case 0x02:
   fp.fp_flags |= PF_OSFP_WSIZE_MSS;
   break;
  case 0x04:
   fp.fp_flags |= PF_OSFP_WSIZE_MTU;
   break;
  case 0x08:
   fp.fp_flags |= PF_OSFP_WSIZE_MOD;
   break;
  }
  fp.fp_wsize = window;

  switch (p_mod) {
  case 0x01:
   fp.fp_flags |= PF_OSFP_PSIZE_DC;
   break;
  case 0x08:
   fp.fp_flags |= PF_OSFP_PSIZE_MOD;
  }
  fp.fp_psize = psize;


  switch (wscale_mod) {
  case 0x01:
   fp.fp_flags |= PF_OSFP_WSCALE_DC;
   break;
  case 0x08:
   fp.fp_flags |= PF_OSFP_WSCALE_MOD;
  }
  fp.fp_wscale = wscale;

  switch (mss_mod) {
  case 0x01:
   fp.fp_flags |= PF_OSFP_MSS_DC;
   break;
  case 0x08:
   fp.fp_flags |= PF_OSFP_MSS_MOD;
   break;
  }
  fp.fp_mss = mss;

  fp.fp_tcpopts = packed_tcpopts;
  fp.fp_optcnt = optcnt;
  if (ts0)
   fp.fp_flags |= PF_OSFP_TS0;

  if (class[0] == '@')
   fp.fp_os.fp_enflags |= PF_OSFP_GENERIC;
  if (class[0] == '*')
   fp.fp_os.fp_enflags |= PF_OSFP_NODETAIL;

  if (class[0] == '@' || class[0] == '*')
   strlcpy(fp.fp_os.fp_class_nm, class + 1,
       sizeof(fp.fp_os.fp_class_nm));
  else
   strlcpy(fp.fp_os.fp_class_nm, class,
       sizeof(fp.fp_os.fp_class_nm));
  strlcpy(fp.fp_os.fp_version_nm, version,
      sizeof(fp.fp_os.fp_version_nm));
  strlcpy(fp.fp_os.fp_subtype_nm, subtype,
      sizeof(fp.fp_os.fp_subtype_nm));

  add_fingerprint(dev, opts, &fp);

  fp.fp_flags |= (PF_OSFP_DF | PF_OSFP_INET6);
  fp.fp_psize += sizeof(struct ip6_hdr) - sizeof(struct ip);
  add_fingerprint(dev, opts, &fp);
 }

 if (class)
  free(class);
 if (version)
  free(version);
 if (subtype)
  free(subtype);
 if (desc)
  free(desc);
 if (tcpopts)
  free(tcpopts);

 fclose(in);

 if (opts & PF_OPT_VERBOSE2)
  printf("Loaded %d passive OS fingerprints\n",
      fingerprint_count);
 return (0);
}
