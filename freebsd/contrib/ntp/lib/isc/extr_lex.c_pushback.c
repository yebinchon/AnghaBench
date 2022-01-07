
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int line; TYPE_1__* pushback; int at_eof; } ;
typedef TYPE_2__ inputsource ;
struct TYPE_4__ {scalar_t__ current; } ;


 int EOF ;
 int ISC_FALSE ;
 int REQUIRE (int) ;

__attribute__((used)) static void
pushback(inputsource *source, int c) {
 REQUIRE(source->pushback->current > 0);
 if (c == EOF) {
  source->at_eof = ISC_FALSE;
  return;
 }
 source->pushback->current--;
 if (c == '\n')
  source->line--;
}
