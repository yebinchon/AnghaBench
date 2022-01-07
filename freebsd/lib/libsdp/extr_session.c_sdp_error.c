
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* sdp_session_p ;
typedef int int32_t ;
struct TYPE_2__ {int error; } ;


 int EINVAL ;

int32_t
sdp_error(void *xss)
{
 sdp_session_p ss = (sdp_session_p) xss;

 return ((ss != ((void*)0))? ss->error : EINVAL);
}
