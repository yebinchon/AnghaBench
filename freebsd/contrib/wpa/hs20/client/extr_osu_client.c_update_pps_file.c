
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int fqdn; scalar_t__ client_cert_present; } ;
typedef int backup ;
typedef int FILE ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 int * get_child_node (int ,int *,char*) ;
 scalar_t__ os_file_exists (char*) ;
 scalar_t__ process_est_cert (struct hs20_osu_client*,int *,int ) ;
 int rename (char const*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_to_str (int ,int *) ;

int update_pps_file(struct hs20_osu_client *ctx, const char *pps_fname,
      xml_node_t *pps)
{
 char *str;
 FILE *f;
 char backup[300];

 if (ctx->client_cert_present) {
  xml_node_t *cert;
  cert = get_child_node(ctx->xml, pps,
          "Credential/DigitalCertificate/"
          "CertSHA256Fingerprint");
  if (cert && os_file_exists("Cert/est_cert.der") &&
      process_est_cert(ctx, cert, ctx->fqdn) < 0) {
   wpa_printf(MSG_INFO, "EST certificate update processing failed on PPS MO update");
   return -1;
  }
 }

 wpa_printf(MSG_INFO, "Updating PPS MO %s", pps_fname);

 str = xml_node_to_str(ctx->xml, pps);
 if (str == ((void*)0)) {
  wpa_printf(MSG_ERROR, "No node found");
  return -1;
 }
 wpa_printf(MSG_MSGDUMP, "[hs20] Updated PPS: '%s'", str);

 snprintf(backup, sizeof(backup), "%s.bak", pps_fname);
 rename(pps_fname, backup);
 f = fopen(pps_fname, "w");
 if (f == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not write PPS");
  rename(backup, pps_fname);
  free(str);
  return -1;
 }
 fprintf(f, "%s\n", str);
 fclose(f);

 free(str);

 return 0;
}
