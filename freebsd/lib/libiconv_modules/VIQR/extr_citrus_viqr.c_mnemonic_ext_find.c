
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_3__ {scalar_t__ value; char const* name; } ;
typedef TYPE_1__ mnemonic_def_t ;



__attribute__((used)) static const char *
mnemonic_ext_find(wchar_t wc, const mnemonic_def_t *head, size_t n)
{
 const mnemonic_def_t *mid;

 for (; n > 0; n >>= 1) {
  mid = head + (n >> 1);
  if (mid->value == wc)
   return (mid->name);
  else if (mid->value < wc) {
   head = mid + 1;
   --n;
  }
 }
 return (((void*)0));
}
