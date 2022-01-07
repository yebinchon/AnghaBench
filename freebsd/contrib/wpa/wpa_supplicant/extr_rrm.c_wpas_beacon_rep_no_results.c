
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int token; } ;
struct wpa_supplicant {TYPE_1__ beacon_rep_data; } ;


 int MEASUREMENT_REPORT_MODE_ACCEPT ;
 int MEASURE_TYPE_BEACON ;
 int wpas_rrm_report_elem (struct wpabuf**,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int wpas_beacon_rep_no_results(struct wpa_supplicant *wpa_s,
          struct wpabuf **buf)
{
 return wpas_rrm_report_elem(buf, wpa_s->beacon_rep_data.token,
        MEASUREMENT_REPORT_MODE_ACCEPT,
        MEASURE_TYPE_BEACON, ((void*)0), 0);
}
