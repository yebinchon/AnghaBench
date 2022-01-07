
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int E2BIG ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZAP_MAXVALUELEN ;

__attribute__((used)) static int
fzap_checksize(uint64_t integer_size, uint64_t num_integers)
{

 switch (integer_size) {
 case 1:
 case 2:
 case 4:
 case 8:
  break;
 default:
  return (SET_ERROR(EINVAL));
 }

 if (integer_size * num_integers > ZAP_MAXVALUELEN)
  return (E2BIG);

 return (0);
}
