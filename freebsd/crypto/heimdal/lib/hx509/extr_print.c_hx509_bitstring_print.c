
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_vprint_func ;
struct TYPE_3__ {int length; scalar_t__ data; } ;
typedef TYPE_1__ heim_bit_string ;


 int print_func (int ,void*,char*,unsigned char,...) ;

void
hx509_bitstring_print(const heim_bit_string *b,
        hx509_vprint_func func, void *ctx)
{
    size_t i;
    print_func(func, ctx, "\tlength: %d\n\t", b->length);
    for (i = 0; i < (b->length + 7) / 8; i++)
 print_func(func, ctx, "%02x%s%s",
     ((unsigned char *)b->data)[i],
     i < (b->length - 7) / 8
     && (i == 0 || (i % 16) != 15) ? ":" : "",
     i != 0 && (i % 16) == 15 ?
     (i <= ((b->length + 7) / 8 - 2) ? "\n\t" : "\n"):"");
}
