
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zb_blkid; scalar_t__ zb_level; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int u_longlong_t ;


 int snprintf (char*,size_t,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
bookmark_to_name(zbookmark_phys_t *zb, char *buf, size_t len)
{
 (void) snprintf(buf, len, "%llx:%llx:%llx:%llx",
     (u_longlong_t)zb->zb_objset, (u_longlong_t)zb->zb_object,
     (u_longlong_t)zb->zb_level, (u_longlong_t)zb->zb_blkid);
}
