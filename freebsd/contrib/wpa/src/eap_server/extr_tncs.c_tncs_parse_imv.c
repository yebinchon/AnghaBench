
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {int imvID; void* path; void* name; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int TNC_MAX_IMV_ID ;
 int os_free (struct tnc_if_imv*) ;
 void* os_strdup (char*) ;
 struct tnc_if_imv* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct tnc_if_imv * tncs_parse_imv(int id, char *start, char *end,
       int *error)
{
 struct tnc_if_imv *imv;
 char *pos, *pos2;

 if (id >= TNC_MAX_IMV_ID) {
  wpa_printf(MSG_DEBUG, "TNC: Too many IMVs");
  return ((void*)0);
 }

 imv = os_zalloc(sizeof(*imv));
 if (imv == ((void*)0)) {
  *error = 1;
  return ((void*)0);
 }

 imv->imvID = id;

 pos = start;
 wpa_printf(MSG_DEBUG, "TNC: Configured IMV: %s", pos);
 if (pos + 1 >= end || *pos != '"') {
  wpa_printf(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
      "(no starting quotation mark)", start);
  os_free(imv);
  return ((void*)0);
 }

 pos++;
 pos2 = pos;
 while (pos2 < end && *pos2 != '"')
  pos2++;
 if (pos2 >= end) {
  wpa_printf(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
      "(no ending quotation mark)", start);
  os_free(imv);
  return ((void*)0);
 }
 *pos2 = '\0';
 wpa_printf(MSG_DEBUG, "TNC: Name: '%s'", pos);
 imv->name = os_strdup(pos);

 pos = pos2 + 1;
 if (pos >= end || *pos != ' ') {
  wpa_printf(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
      "(no space after name)", start);
  os_free(imv);
  return ((void*)0);
 }

 pos++;
 wpa_printf(MSG_DEBUG, "TNC: IMV file: '%s'", pos);
 imv->path = os_strdup(pos);

 return imv;
}
