
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct baton {scalar_t__ cputype; } ;


 scalar_t__ CPU_TYPE_ARM ;
 scalar_t__ CPU_TYPE_ARM64 ;
 scalar_t__ CPU_TYPE_I386 ;
 scalar_t__ CPU_TYPE_X86_64 ;
 int print_encoding_arm64 (struct baton,int *,int ) ;
 int print_encoding_armv7 (struct baton,int *,int ) ;
 int print_encoding_i386 (struct baton,int *,int ) ;
 int print_encoding_x86_64 (struct baton,int *,int ) ;
 int printf (char*) ;

void print_encoding(struct baton baton, uint8_t *function_start,
                    uint32_t encoding) {

  if (baton.cputype == CPU_TYPE_X86_64) {
    print_encoding_x86_64(baton, function_start, encoding);
  } else if (baton.cputype == CPU_TYPE_I386) {
    print_encoding_i386(baton, function_start, encoding);
  } else if (baton.cputype == CPU_TYPE_ARM64) {
    print_encoding_arm64(baton, function_start, encoding);
  } else if (baton.cputype == CPU_TYPE_ARM) {
    print_encoding_armv7(baton, function_start, encoding);
  } else {
    printf(" -- unsupported encoding arch -- ");
  }
}
