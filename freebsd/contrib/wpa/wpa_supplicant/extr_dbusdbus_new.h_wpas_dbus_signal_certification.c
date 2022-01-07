
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;



__attribute__((used)) static inline void wpas_dbus_signal_certification(struct wpa_supplicant *wpa_s,
        int depth,
        const char *subject,
        const char *altsubject[],
        int num_altsubject,
        const char *cert_hash,
        const struct wpabuf *cert)
{
}
