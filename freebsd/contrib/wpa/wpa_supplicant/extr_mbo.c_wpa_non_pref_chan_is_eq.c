
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_mbo_non_pref_channel {scalar_t__ oper_class; scalar_t__ chan; } ;



__attribute__((used)) static int wpa_non_pref_chan_is_eq(struct wpa_mbo_non_pref_channel *a,
       struct wpa_mbo_non_pref_channel *b)
{
 return a->oper_class == b->oper_class && a->chan == b->chan;
}
