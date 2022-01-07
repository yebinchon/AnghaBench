
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flags; } ;
typedef TYPE_1__ ns_msg ;
struct TYPE_5__ {int mask; int shift; } ;


 TYPE_3__* _ns_flagdata ;

int ns_msg_getflag(ns_msg handle, int flag) {
 return(((handle)._flags & _ns_flagdata[flag].mask) >> _ns_flagdata[flag].shift);
}
