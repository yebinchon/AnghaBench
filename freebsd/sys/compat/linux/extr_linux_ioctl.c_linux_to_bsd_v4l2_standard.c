
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_standard {int reserved; int framelines; int frameperiod; int name; int id; int index; } ;
struct l_v4l2_standard {int reserved; int framelines; int frameperiod; int name; int id; int index; } ;


 int CTASSERT (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
linux_to_bsd_v4l2_standard(struct l_v4l2_standard *lvstd, struct v4l2_standard *vstd)
{
 vstd->index = lvstd->index;
 vstd->id = lvstd->id;
 CTASSERT(sizeof(vstd->name) == sizeof(lvstd->name));
 memcpy(vstd->name, lvstd->name, sizeof(vstd->name));
 vstd->frameperiod = lvstd->frameperiod;
 vstd->framelines = lvstd->framelines;
 CTASSERT(sizeof(vstd->reserved) == sizeof(lvstd->reserved));
 memcpy(vstd->reserved, lvstd->reserved, sizeof(vstd->reserved));
 return (0);
}
