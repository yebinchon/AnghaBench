
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; scalar_t__ server_dnsname_count; } ;


 int EEXIST ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int S_IRWXG ;
 int S_IRWXU ;
 int android_update_permission (char*,int) ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 int download_trust_roots (struct hs20_osu_client*,char*) ;
 int errno ;
 int free (char*) ;
 int * get_child_node (int ,int *,char*) ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ node_to_file (int ,char*,int *) ;
 scalar_t__ os_file_exists (char*) ;
 scalar_t__ os_strcasecmp (char const*,char*) ;
 scalar_t__ process_est_cert (struct hs20_osu_client*,int *,char*) ;
 int server_dnsname_suffix_match (struct hs20_osu_client*,char*) ;
 int snprintf (char*,size_t,char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strerror (int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * tnds_to_mo (int ,int *) ;
 int unlink (char*) ;
 int valid_fqdn (char*) ;
 int wpa_printf (int ,char*,...) ;
 int write_result (struct hs20_osu_client*,char*,char const*) ;
 int write_summary (struct hs20_osu_client*,char*,...) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 char* xml_node_get_localname (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

int hs20_add_pps_mo(struct hs20_osu_client *ctx, const char *uri,
      xml_node_t *add_mo, char *fname, size_t fname_len)
{
 char *str;
 char *fqdn, *pos;
 xml_node_t *tnds, *mo, *cert;
 const char *name;
 int ret;

 if (strncmp(uri, "./Wi-Fi/", 8) != 0) {
  wpa_printf(MSG_INFO, "Unsupported location for addMO to add PPS MO: '%s'",
      uri);
  write_result(ctx, "Unsupported location for addMO to add PPS MO: '%s'",
        uri);
  return -1;
 }

 fqdn = strdup(uri + 8);
 if (fqdn == ((void*)0))
  return -1;
 pos = strchr(fqdn, '/');
 if (pos) {
  if (os_strcasecmp(pos, "/PerProviderSubscription") != 0) {
   wpa_printf(MSG_INFO, "Unsupported location for addMO to add PPS MO (extra directory): '%s'",
       uri);
   write_result(ctx, "Unsupported location for addMO to "
         "add PPS MO (extra directory): '%s'", uri);
   free(fqdn);
   return -1;
  }
  *pos = '\0';
 }
 wpa_printf(MSG_INFO, "SP FQDN: %s", fqdn);

 if (!server_dnsname_suffix_match(ctx, fqdn)) {
  wpa_printf(MSG_INFO,
      "FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values, count: %d",
      fqdn, (int) ctx->server_dnsname_count);
  write_result(ctx, "FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values",
        fqdn);
  free(fqdn);
  return -1;
 }

 if (!valid_fqdn(fqdn)) {
  wpa_printf(MSG_INFO, "Invalid FQDN '%s'", fqdn);
  write_result(ctx, "Invalid FQDN '%s'", fqdn);
  free(fqdn);
  return -1;
 }

 mkdir("SP", S_IRWXU);
 snprintf(fname, fname_len, "SP/%s", fqdn);
 if (mkdir(fname, S_IRWXU) < 0) {
  if (errno != EEXIST) {
   int err = errno;
   wpa_printf(MSG_INFO, "mkdir(%s) failed: %s",
       fname, strerror(err));
   free(fqdn);
   return -1;
  }
 }

 android_update_permission("SP", S_IRWXU | S_IRWXG);
 android_update_permission(fname, S_IRWXU | S_IRWXG);

 snprintf(fname, fname_len, "SP/%s/pps.xml", fqdn);

 if (os_file_exists(fname)) {
  wpa_printf(MSG_INFO, "PPS file '%s' exists - reject addMO",
      fname);
  write_result(ctx, "PPS file '%s' exists - reject addMO",
        fname);
  free(fqdn);
  return -2;
 }
 wpa_printf(MSG_INFO, "Using PPS file: %s", fname);

 str = xml_node_get_text(ctx->xml, add_mo);
 if (str == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not extract MO text");
  free(fqdn);
  return -1;
 }
 wpa_printf(MSG_DEBUG, "[hs20] addMO text: '%s'", str);

 tnds = xml_node_from_buf(ctx->xml, str);
 xml_node_get_text_free(ctx->xml, str);
 if (tnds == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] Could not parse addMO text");
  free(fqdn);
  return -1;
 }

 mo = tnds_to_mo(ctx->xml, tnds);
 if (mo == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] Could not parse addMO TNDS text");
  free(fqdn);
  return -1;
 }

 debug_dump_node(ctx, "Parsed TNDS", mo);

 name = xml_node_get_localname(ctx->xml, mo);
 if (os_strcasecmp(name, "PerProviderSubscription") != 0) {
  wpa_printf(MSG_INFO, "[hs20] Unexpected PPS MO root node name '%s'",
      name);
  free(fqdn);
  return -1;
 }

 cert = get_child_node(ctx->xml, mo,
         "Credential/DigitalCertificate/"
         "CertSHA256Fingerprint");
 if (cert && process_est_cert(ctx, cert, fqdn) < 0) {
  xml_node_free(ctx->xml, mo);
  free(fqdn);
  return -1;
 }
 free(fqdn);

 if (node_to_file(ctx->xml, fname, mo) < 0) {
  wpa_printf(MSG_INFO, "Could not write MO to file");
  xml_node_free(ctx->xml, mo);
  return -1;
 }
 xml_node_free(ctx->xml, mo);

 wpa_printf(MSG_INFO, "A new PPS MO added as '%s'", fname);
 write_summary(ctx, "A new PPS MO added as '%s'", fname);

 ret = download_trust_roots(ctx, fname);
 if (ret < 0) {
  wpa_printf(MSG_INFO, "Remove invalid PPS MO file");
  write_summary(ctx, "Remove invalid PPS MO file");
  unlink(fname);
 }

 return ret;
}
