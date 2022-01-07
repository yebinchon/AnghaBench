
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tlssize; int tlsoffset; } ;
typedef TYPE_1__ Obj_Entry ;


 scalar_t__ calculate_tls_end (int ,scalar_t__) ;
 int tls_last_offset ;
 scalar_t__ tls_last_size ;

void
free_tls_offset(Obj_Entry *obj)
{







    if (calculate_tls_end(obj->tlsoffset, obj->tlssize)
 == calculate_tls_end(tls_last_offset, tls_last_size)) {
 tls_last_offset -= obj->tlssize;
 tls_last_size = 0;
    }
}
