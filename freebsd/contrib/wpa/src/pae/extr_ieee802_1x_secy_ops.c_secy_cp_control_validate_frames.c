
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_kay {int vf; } ;
typedef enum validate_frames { ____Placeholder_validate_frames } validate_frames ;



int secy_cp_control_validate_frames(struct ieee802_1x_kay *kay,
        enum validate_frames vf)
{
 kay->vf = vf;
 return 0;
}
