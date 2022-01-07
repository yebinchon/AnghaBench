
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_REGISTER_RAW_SIZE (int) ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 double deprecated_extract_floating (char const*,scalar_t__) ;
 int deprecated_store_floating (char*,scalar_t__,double) ;
 int memcpy (char*,char const*,scalar_t__) ;

__attribute__((used)) static void
rs6000_register_convert_to_raw (struct type *type, int n,
    const char *from, char *to)
{
  if (TYPE_LENGTH (type) != DEPRECATED_REGISTER_RAW_SIZE (n))
    {
      double val = deprecated_extract_floating (from, TYPE_LENGTH (type));
      deprecated_store_floating (to, DEPRECATED_REGISTER_RAW_SIZE (n), val);
    }
  else
    memcpy (to, from, DEPRECATED_REGISTER_RAW_SIZE (n));
}
