
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int isgraph (char const) ;
 int os_free (char*) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 int os_strncasecmp (char const*,char*,int) ;
 int wpa_printf (int ,char*,char*) ;
 char* xml_get_first_item (char const*,char*) ;
 scalar_t__ xml_next_tag (char const*,char const**,char const**,char const**) ;

__attribute__((used)) static const char * wps_er_find_wfadevice(const char *data)
{
 const char *tag, *tagname, *end;
 char *val;
 int found = 0;

 while (!found) {

  for (;;) {
   if (xml_next_tag(data, &tag, &tagname, &end))
    return ((void*)0);
   data = end;
   if (!os_strncasecmp(tagname, "device", 6) &&
       *tag != '/' &&
       (tagname[6] == '>' || !isgraph(tagname[6]))) {
    break;
   }
  }


  val = xml_get_first_item(data, "deviceType");
  if (val == ((void*)0))
   return ((void*)0);
  wpa_printf(MSG_DEBUG, "WPS ER: Found deviceType '%s'", val);
  found = os_strcasecmp(val, "urn:schemas-wifialliance-org:"
          "device:WFADevice:1") == 0;
  os_free(val);
 }

 return data;
}
