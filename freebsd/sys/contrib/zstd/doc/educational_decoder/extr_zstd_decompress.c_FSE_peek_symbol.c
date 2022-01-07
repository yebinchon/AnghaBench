
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_3__ {int * symbols; } ;
typedef TYPE_1__ FSE_dtable ;



__attribute__((used)) static inline u8 FSE_peek_symbol(const FSE_dtable *const dtable,
                                 const u16 state) {
    return dtable->symbols[state];
}
