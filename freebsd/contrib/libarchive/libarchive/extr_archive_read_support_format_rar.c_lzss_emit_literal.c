
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int position; } ;
struct rar {TYPE_1__ lzss; } ;


 int * lzss_current_pointer (TYPE_1__*) ;

__attribute__((used)) static inline void
lzss_emit_literal(struct rar *rar, uint8_t literal)
{
  *lzss_current_pointer(&rar->lzss) = literal;
  rar->lzss.position++;
}
