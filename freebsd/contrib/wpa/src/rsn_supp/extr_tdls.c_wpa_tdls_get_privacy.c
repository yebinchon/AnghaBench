
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ pairwise_cipher; } ;


 scalar_t__ WPA_CIPHER_NONE ;

__attribute__((used)) static int wpa_tdls_get_privacy(struct wpa_sm *sm)
{





 return sm->pairwise_cipher != WPA_CIPHER_NONE;
}
