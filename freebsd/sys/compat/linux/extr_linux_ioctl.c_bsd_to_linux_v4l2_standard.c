
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_standard {int reserved; int framelines; int frameperiod; int name; int id; int index; } ;
struct l_v4l2_standard {int reserved; int framelines; int frameperiod; int name; int id; int index; } ;


 int CTASSERT (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
bsd_to_linux_v4l2_standard(struct v4l2_standard *vstd, struct l_v4l2_standard *lvstd)
{
 lvstd->index = vstd->index;
 lvstd->id = vstd->id;
 CTASSERT(sizeof(vstd->name) == sizeof(lvstd->name));
 memcpy(lvstd->name, vstd->name, sizeof(lvstd->name));
 lvstd->frameperiod = vstd->frameperiod;
 lvstd->framelines = vstd->framelines;
 CTASSERT(sizeof(vstd->reserved) == sizeof(lvstd->reserved));
 memcpy(lvstd->reserved, vstd->reserved, sizeof(lvstd->reserved));
 return (0);
}
