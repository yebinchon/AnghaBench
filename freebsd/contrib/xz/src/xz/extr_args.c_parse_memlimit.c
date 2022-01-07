
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int hardware_memlimit_set (int ,int,int,int) ;
 int str_to_uint64 (char const*,char*,int,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
parse_memlimit(const char *name, const char *name_percentage, char *str,
  bool set_compress, bool set_decompress)
{
 bool is_percentage = 0;
 uint64_t value;

 const size_t len = strlen(str);
 if (len > 0 && str[len - 1] == '%') {
  str[len - 1] = '\0';
  is_percentage = 1;
  value = str_to_uint64(name_percentage, str, 1, 100);
 } else {



  value = str_to_uint64(name, str, 0, UINT64_MAX);
 }

 hardware_memlimit_set(
   value, set_compress, set_decompress, is_percentage);
 return;
}
