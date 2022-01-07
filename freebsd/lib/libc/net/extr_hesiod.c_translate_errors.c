
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HES_ER_CONFIG ;
 int HES_ER_NET ;
 int HES_ER_NOTFOUND ;
 int errno ;
 int errval ;

__attribute__((used)) static void
translate_errors()
{
 switch (errno) {
 case 129:
  errval = HES_ER_NOTFOUND;
  break;
 case 131:
 case 130:
  errval = HES_ER_NET;
  break;
 case 128:
 default:

  errval = HES_ER_CONFIG;
  break;
 }
}
