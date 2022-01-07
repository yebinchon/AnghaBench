
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_11_elems {int* ext_capab; } ;



__attribute__((used)) static int wpa_tdls_prohibited(struct ieee802_11_elems *elems)
{

 return !!(elems->ext_capab[4] & 0x40);
}
