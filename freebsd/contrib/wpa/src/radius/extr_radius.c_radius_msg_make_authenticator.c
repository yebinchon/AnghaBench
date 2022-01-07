
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {TYPE_1__* hdr; } ;
struct TYPE_2__ {int authenticator; } ;


 int os_get_random (int *,int) ;

int radius_msg_make_authenticator(struct radius_msg *msg)
{
 return os_get_random((u8 *) &msg->hdr->authenticator,
        sizeof(msg->hdr->authenticator));
}
