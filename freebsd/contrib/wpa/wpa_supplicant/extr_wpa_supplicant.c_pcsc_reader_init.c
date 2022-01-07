
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {char* imsi; int * scard; int eapol; int wpa; int mnc_len; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ pcsc_pin; int pcsc_reader; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int eapol_sm_register_scard_ctx (int ,int *) ;
 int scard_deinit (int *) ;
 scalar_t__ scard_get_imsi (int *,char*,size_t*) ;
 int scard_get_mnc_len (int *) ;
 int * scard_init (int ) ;
 scalar_t__ scard_set_pin (int *,scalar_t__) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*,char*,int ) ;
 int wpa_sm_set_scard_ctx (int ,int *) ;

__attribute__((used)) static int pcsc_reader_init(struct wpa_supplicant *wpa_s)
{
 return 0;
}
