
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_method_desc {struct wpa_dbus_argument* args; } ;
struct wpa_dbus_argument {scalar_t__ dir; int type; scalar_t__ name; } ;
typedef int DBusMessage ;


 scalar_t__ ARG_IN ;
 int MAX_SIG_LEN ;
 char* dbus_message_get_signature (int *) ;
 int os_snprintf (char*,size_t,char*,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 int os_strncmp (char*,char const*,int) ;

__attribute__((used)) static int is_signature_correct(DBusMessage *message,
    const struct wpa_dbus_method_desc *method_dsc)
{


 char registered_sig[256], *pos;
 const char *sig = dbus_message_get_signature(message);
 int ret;
 const struct wpa_dbus_argument *arg;

 pos = registered_sig;
 *pos = '\0';

 for (arg = method_dsc->args; arg && arg->name; arg++) {
  if (arg->dir == ARG_IN) {
   size_t blen = registered_sig + 256 - pos;

   ret = os_snprintf(pos, blen, "%s", arg->type);
   if (os_snprintf_error(blen, ret))
    return 0;
   pos += ret;
  }
 }

 return !os_strncmp(registered_sig, sig, 256);
}
