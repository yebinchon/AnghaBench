
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HES_ER_CONFIG ;
 int HES_ER_OK ;
 int context ;
 int errval ;
 scalar_t__ hesiod_init (int *) ;
 int inited ;

__attribute__((used)) static int
init_context()
{
 if (!inited) {
  inited = 1;
  if (hesiod_init(&context) < 0) {
   errval = HES_ER_CONFIG;
   return -1;
  }
  errval = HES_ER_OK;
 }
 return 0;
}
