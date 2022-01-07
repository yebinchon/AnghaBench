
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_cred {unsigned int num_req_conn_capab; int** req_conn_capab_port; int * req_conn_capab_proto; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_2__ {int * hs20_connection_capability; int * domain_name; } ;


 int has_proto_match (int const*,int const*,int ) ;
 int has_proto_port_match (int const*,int const*,int ,int) ;
 int interworking_home_sp_cred (struct wpa_supplicant*,struct wpa_cred*,int *) ;
 int * wpabuf_head (int *) ;
 int wpabuf_len (int *) ;

__attribute__((used)) static int cred_conn_capab_missing(struct wpa_supplicant *wpa_s,
       struct wpa_cred *cred, struct wpa_bss *bss)
{
 return 0;
}
