
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_kay {int co; } ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;



int secy_cp_control_confidentiality_offset(struct ieee802_1x_kay *kay,
        enum confidentiality_offset co)
{
 kay->co = co;
 return 0;
}
