
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tls_done; scalar_t__ tlsalign; size_t tlsoffset; int tlssize; } ;
typedef TYPE_1__ Obj_Entry ;


 size_t calculate_first_tls_offset (int ,scalar_t__) ;
 scalar_t__ calculate_tls_end (size_t,int ) ;
 size_t calculate_tls_offset (size_t,int ,int ,scalar_t__) ;
 size_t tls_last_offset ;
 int tls_last_size ;
 scalar_t__ tls_static_max_align ;
 scalar_t__ tls_static_space ;

bool
allocate_tls_offset(Obj_Entry *obj)
{
    size_t off;

    if (obj->tls_done)
 return 1;

    if (obj->tlssize == 0) {
 obj->tls_done = 1;
 return 1;
    }

    if (tls_last_offset == 0)
 off = calculate_first_tls_offset(obj->tlssize, obj->tlsalign);
    else
 off = calculate_tls_offset(tls_last_offset, tls_last_size,
       obj->tlssize, obj->tlsalign);







    if (tls_static_space != 0) {
 if (calculate_tls_end(off, obj->tlssize) > tls_static_space)
     return 0;
    } else if (obj->tlsalign > tls_static_max_align) {
     tls_static_max_align = obj->tlsalign;
    }

    tls_last_offset = obj->tlsoffset = off;
    tls_last_size = obj->tlssize;
    obj->tls_done = 1;

    return 1;
}
