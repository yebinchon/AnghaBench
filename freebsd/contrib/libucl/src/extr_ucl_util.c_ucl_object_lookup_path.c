
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int const* ucl_object_lookup_path_char (int const*,char const*,char) ;

const ucl_object_t *
ucl_object_lookup_path (const ucl_object_t *top, const char *path_in) {
 return ucl_object_lookup_path_char (top, path_in, '.');
}
