
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_session {scalar_t__ t_c_timestamp; int t_c_filtering; } ;
struct radius_msg {int dummy; } ;


 int RADIUS_ATTR_VENDOR_SPECIFIC ;
 int RADIUS_DEBUG (char*,...) ;
 int RADIUS_VENDOR_ATTR_WFA_HS20_TIMESTAMP ;
 scalar_t__ RADIUS_VENDOR_ID_WFA ;
 scalar_t__ WPA_GET_BE32 (int*) ;
 scalar_t__ radius_msg_get_attr_ptr (struct radius_msg*,int ,int**,size_t*,int*) ;

__attribute__((used)) static void radius_server_hs20_t_c_check(struct radius_session *sess,
      struct radius_msg *msg)
{
}
