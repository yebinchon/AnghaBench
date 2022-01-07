
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int onoff; } ;


 int ENTERF (int) ;
 int OPENPAM_NUM_FEATURES ;
 int PAM_BAD_FEATURE ;
 int PAM_SUCCESS ;
 int RETURNC (int ) ;
 TYPE_1__* openpam_features ;

int
openpam_set_feature(int feature, int onoff)
{

 ENTERF(feature);
 if (feature < 0 || feature >= OPENPAM_NUM_FEATURES)
  RETURNC(PAM_BAD_FEATURE);
 openpam_features[feature].onoff = onoff;
 RETURNC(PAM_SUCCESS);
}
