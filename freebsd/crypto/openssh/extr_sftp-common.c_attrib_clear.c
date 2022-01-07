
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mtime; scalar_t__ atime; scalar_t__ perm; scalar_t__ gid; scalar_t__ uid; scalar_t__ size; scalar_t__ flags; } ;
typedef TYPE_1__ Attrib ;



void
attrib_clear(Attrib *a)
{
 a->flags = 0;
 a->size = 0;
 a->uid = 0;
 a->gid = 0;
 a->perm = 0;
 a->atime = 0;
 a->mtime = 0;
}
