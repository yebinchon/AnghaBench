
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef scalar_t__ LONGEST ;


 int CHECK_TYPEDEF (struct type*) ;
 int LA_PRINT_CHAR (unsigned char,struct ui_file*) ;
 int TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_FIELD_BITPOS (struct type*,unsigned int) ;
 int TYPE_FIELD_NAME (struct type*,unsigned int) ;
 unsigned int TYPE_NFIELDS (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int gdb_flush (struct ui_file*) ;
 int print_longest (struct ui_file*,unsigned char,int ,scalar_t__) ;

void
print_type_scalar (struct type *type, LONGEST val, struct ui_file *stream)
{
  unsigned int i;
  unsigned len;

  CHECK_TYPEDEF (type);

  switch (TYPE_CODE (type))
    {

    case 144:
      len = TYPE_NFIELDS (type);
      for (i = 0; i < len; i++)
 {
   if (TYPE_FIELD_BITPOS (type, i) == val)
     {
       break;
     }
 }
      if (i < len)
 {
   fputs_filtered (TYPE_FIELD_NAME (type, i), stream);
 }
      else
 {
   print_longest (stream, 'd', 0, val);
 }
      break;

    case 140:
      print_longest (stream, TYPE_UNSIGNED (type) ? 'u' : 'd', 0, val);
      break;

    case 145:
      LA_PRINT_CHAR ((unsigned char) val, stream);
      break;

    case 146:
      fprintf_filtered (stream, val ? "TRUE" : "FALSE");
      break;

    case 135:
      print_type_scalar (TYPE_TARGET_TYPE (type), val, stream);
      return;

    case 130:
    case 136:
    case 147:
    case 131:
    case 129:
    case 141:
    case 142:
    case 128:
    case 133:
    case 132:
    case 143:
    case 139:
    case 138:
    case 134:
    case 137:
      error ("internal error: unhandled type in print_type_scalar");
      break;

    default:
      error ("Invalid type code in symbol table.");
    }
  gdb_flush (stream);
}
