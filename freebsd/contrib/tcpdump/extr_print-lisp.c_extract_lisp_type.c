
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TYPE_INDEX ;

__attribute__((used)) static inline uint8_t extract_lisp_type(uint8_t lisp_hdr_flags)
{
 return (lisp_hdr_flags) >> TYPE_INDEX;
}
