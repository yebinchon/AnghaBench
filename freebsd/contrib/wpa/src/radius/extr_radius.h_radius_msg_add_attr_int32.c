
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radius_msg {int dummy; } ;


 int htonl (int ) ;
 int * radius_msg_add_attr (struct radius_msg*,int ,int *,int) ;

__attribute__((used)) static inline int radius_msg_add_attr_int32(struct radius_msg *msg, u8 type,
         u32 value)
{
 u32 val = htonl(value);
 return radius_msg_add_attr(msg, type, (u8 *) &val, 4) != ((void*)0);
}
