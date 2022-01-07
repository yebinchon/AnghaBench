
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct radius_msg {TYPE_1__* hdr; } ;
struct TYPE_2__ {void* identifier; void* code; } ;



__attribute__((used)) static void radius_msg_set_hdr(struct radius_msg *msg, u8 code, u8 identifier)
{
 msg->hdr->code = code;
 msg->hdr->identifier = identifier;
}
