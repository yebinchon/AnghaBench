
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbm_macro {void* pp; void* value; } ;
typedef size_t int32_t ;
struct TYPE_2__ {int pages; int value; } ;


 size_t MACRO_MAX ;
 int assert (int) ;
 void* dbm_get (int ) ;
 TYPE_1__** macros ;
 size_t* nvals ;

struct dbm_macro *
dbm_macro_get(int32_t im, int32_t iv)
{
 static struct dbm_macro macro;

 assert(im >= 0);
 assert(im < MACRO_MAX);
 assert(iv >= 0);
 assert(iv < nvals[im]);
 macro.value = dbm_get(macros[im][iv].value);
 macro.pp = dbm_get(macros[im][iv].pages);
 return &macro;
}
