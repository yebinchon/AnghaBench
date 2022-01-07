
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct country_op_class {int dummy; } ;


 size_t ARRAY_SIZE (struct country_op_class*) ;
 struct country_op_class* cn_op_class ;
 int cn_op_class_cc ;
 scalar_t__ country_match (int ,char const*) ;
 struct country_op_class* eu_op_class ;
 int eu_op_class_cc ;
 scalar_t__ global_op_class_from_country_array (scalar_t__,size_t,struct country_op_class const*) ;
 struct country_op_class* jp_op_class ;
 int jp_op_class_cc ;
 struct country_op_class* us_op_class ;
 int us_op_class_cc ;

u8 country_to_global_op_class(const char *country, u8 op_class)
{
 const struct country_op_class *country_array;
 size_t size;
 u8 g_op_class;

 if (country_match(us_op_class_cc, country)) {
  country_array = us_op_class;
  size = ARRAY_SIZE(us_op_class);
 } else if (country_match(eu_op_class_cc, country)) {
  country_array = eu_op_class;
  size = ARRAY_SIZE(eu_op_class);
 } else if (country_match(jp_op_class_cc, country)) {
  country_array = jp_op_class;
  size = ARRAY_SIZE(jp_op_class);
 } else if (country_match(cn_op_class_cc, country)) {
  country_array = cn_op_class;
  size = ARRAY_SIZE(cn_op_class);
 } else {




  return op_class;
 }

 g_op_class = global_op_class_from_country_array(op_class, size,
       country_array);





 return g_op_class ? g_op_class : op_class;
}
