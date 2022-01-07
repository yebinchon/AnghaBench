
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct floatformat {int dummy; } ;
typedef double DOUBLEST ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FLT ;
 unsigned int TYPE_LENGTH (struct type*) ;
 struct floatformat* floatformat_from_type (struct type*) ;
 scalar_t__ floatformat_is_nan (struct floatformat const*,char*) ;
 scalar_t__ floatformat_is_negative (struct floatformat const*,char*) ;
 int floatformat_mantissa (struct floatformat const*,char*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int local_hex_format_prefix () ;
 int local_hex_format_suffix () ;
 double unpack_double (struct type*,char*,int*) ;

void
print_floating (char *valaddr, struct type *type, struct ui_file *stream)
{
  DOUBLEST doub;
  int inv;
  const struct floatformat *fmt = ((void*)0);
  unsigned len = TYPE_LENGTH (type);


  if (TYPE_CODE (type) == TYPE_CODE_FLT)
    fmt = floatformat_from_type (type);
  if (fmt != ((void*)0) && floatformat_is_nan (fmt, valaddr))
    {
      if (floatformat_is_negative (fmt, valaddr))
 fprintf_filtered (stream, "-");
      fprintf_filtered (stream, "nan(");
      fputs_filtered (local_hex_format_prefix (), stream);
      fputs_filtered (floatformat_mantissa (fmt, valaddr), stream);
      fputs_filtered (local_hex_format_suffix (), stream);
      fprintf_filtered (stream, ")");
      return;
    }
  doub = unpack_double (type, valaddr, &inv);
  if (inv)
    {
      fprintf_filtered (stream, "<invalid float value>");
      return;
    }
  if (len < sizeof (double))
      fprintf_filtered (stream, "%.9g", (double) doub);
  else if (len == sizeof (double))
      fprintf_filtered (stream, "%.17g", (double) doub);
  else





    fprintf_filtered (stream, "%.17g", (double) doub);

}
