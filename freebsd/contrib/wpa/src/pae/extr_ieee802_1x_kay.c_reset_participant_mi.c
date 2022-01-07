
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_participant {scalar_t__ mn; int mi; } ;
typedef int Boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ os_get_random (int ,int) ;

__attribute__((used)) static Boolean
reset_participant_mi(struct ieee802_1x_mka_participant *participant)
{
 if (os_get_random(participant->mi, sizeof(participant->mi)) < 0)
  return FALSE;
 participant->mn = 0;

 return TRUE;
}
