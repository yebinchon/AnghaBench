
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_participant {int to_use_sak; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean
ieee802_1x_mka_sak_use_body_present(
 struct ieee802_1x_mka_participant *participant)
{
 return participant->to_use_sak;
}
