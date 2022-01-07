
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_mschapv2_data {int prev_challenge; } ;


 int wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_mschapv2_copy_challenge(struct eap_mschapv2_data *data,
     const struct wpabuf *reqData)
{




 wpabuf_free(data->prev_challenge);
 data->prev_challenge = wpabuf_dup(reqData);
}
