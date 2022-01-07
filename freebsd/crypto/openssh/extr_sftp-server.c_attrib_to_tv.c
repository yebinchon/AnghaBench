
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct TYPE_3__ {int mtime; int atime; } ;
typedef TYPE_1__ Attrib ;



__attribute__((used)) static struct timeval *
attrib_to_tv(const Attrib *a)
{
 static struct timeval tv[2];

 tv[0].tv_sec = a->atime;
 tv[0].tv_usec = 0;
 tv[1].tv_sec = a->mtime;
 tv[1].tv_usec = 0;
 return tv;
}
