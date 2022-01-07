
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int val ;
typedef int str ;
struct TYPE_7__ {unsigned char* data; size_t length; } ;
typedef TYPE_1__ heim_printable_string ;
typedef int heim_oid ;
struct TYPE_8__ {unsigned char* data; size_t length; } ;
typedef TYPE_2__ heim_octet_string ;
typedef int heim_integer ;
typedef char* heim_general_string ;
typedef scalar_t__ Der_type ;
typedef scalar_t__ Der_class ;


 scalar_t__ ASN1_C_APPL ;
 scalar_t__ ASN1_C_CONTEXT ;
 scalar_t__ ASN1_C_UNIV ;
 size_t ASN1_INDEFINITE ;
 scalar_t__ CONS ;
 scalar_t__ PRIM ;
 int der_free_oid (int *) ;
 int der_free_printable_string (TYPE_1__*) ;
 char* der_get_class_name (scalar_t__) ;
 int der_get_general_string (unsigned char*,size_t,char**,int *) ;
 int der_get_heim_integer (unsigned char*,size_t,int *,int *) ;
 int der_get_integer (unsigned char*,size_t,int*,int *) ;
 int der_get_length (unsigned char*,size_t,size_t*,size_t*) ;
 int der_get_octet_string (unsigned char*,size_t,TYPE_2__*,int *) ;
 int der_get_oid (unsigned char*,size_t,int *,int *) ;
 int der_get_printable_string (unsigned char*,size_t,TYPE_1__*,int *) ;
 int der_get_tag (unsigned char*,size_t,scalar_t__*,scalar_t__*,unsigned int*,size_t*) ;
 char* der_get_tag_name (unsigned int) ;
 char* der_get_type_name (scalar_t__) ;
 int der_print_heim_oid (int *,char,char**) ;
 int der_print_hex_heim_integer (int *,char**) ;
 int error_message (int) ;
 int errx (int,char*,...) ;
 int fflush (int ) ;
 int free (char*) ;
 scalar_t__ indefinite_form_loop ;
 scalar_t__ indefinite_form_loop_max ;
 scalar_t__ indent_flag ;
 int inner_flag ;
 int isprint (int) ;
 int memset (TYPE_1__*,int ,int) ;
 size_t min (int,size_t) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static size_t
loop (unsigned char *buf, size_t len, int indent)
{
    unsigned char *start_buf = buf;

    while (len > 0) {
 int ret;
 Der_class class;
 Der_type type;
 unsigned int tag;
 size_t sz;
 size_t length;
 size_t loop_length = 0;
 int end_tag = 0;
 const char *tagname;

 ret = der_get_tag (buf, len, &class, &type, &tag, &sz);
 if (ret)
     errx (1, "der_get_tag: %s", error_message (ret));
 if (sz > len)
     errx (1, "unreasonable length (%u) > %u",
    (unsigned)sz, (unsigned)len);
 buf += sz;
 len -= sz;
 if (indent_flag) {
     int i;
     for (i = 0; i < indent; ++i)
  printf (" ");
 }
 printf ("%s %s ", der_get_class_name(class), der_get_type_name(type));
 tagname = der_get_tag_name(tag);
 if (class == ASN1_C_UNIV && tagname != ((void*)0))
     printf ("%s = ", tagname);
 else
     printf ("tag %d = ", tag);
 ret = der_get_length (buf, len, &length, &sz);
 if (ret)
     errx (1, "der_get_tag: %s", error_message (ret));
 if (sz > len)
     errx (1, "unreasonable tag length (%u) > %u",
    (unsigned)sz, (unsigned)len);
 buf += sz;
 len -= sz;
 if (length == ASN1_INDEFINITE) {
     if ((class == ASN1_C_UNIV && type == PRIM && tag == 133) ||
  (class == ASN1_C_CONTEXT && type == CONS) ||
  (class == ASN1_C_UNIV && type == CONS && tag == 131) ||
  (class == ASN1_C_UNIV && type == CONS && tag == 130)) {
  printf("*INDEFINITE FORM*");
     } else {
  fflush(stdout);
  errx(1, "indef form used on unsupported object");
     }
     end_tag = 1;
     if (indefinite_form_loop > indefinite_form_loop_max)
  errx(1, "indefinite form used recursively more then %lu "
       "times, aborting", indefinite_form_loop_max);
     indefinite_form_loop++;
     length = len;
 } else if (length > len) {
     printf("\n");
     fflush(stdout);
     errx (1, "unreasonable inner length (%u) > %u",
    (unsigned)length, (unsigned)len);
 }
 if (class == ASN1_C_CONTEXT || class == ASN1_C_APPL) {
     printf ("%lu bytes [%u]", (unsigned long)length, tag);
     if (type == CONS) {
  printf("\n");
  loop_length = loop (buf, length, indent + 2);
     } else {
  printf(" IMPLICIT content\n");
     }
 } else if (class == ASN1_C_UNIV) {
     switch (tag) {
     case 140:
  printf (" INDEFINITE length was %lu\n",
   (unsigned long)(buf - start_buf));
  break;
     case 130 :
     case 131 :
  printf ("%lu bytes {\n", (unsigned long)length);
  loop_length = loop (buf, length, indent + 2);
  if (indent_flag) {
      int i;
      for (i = 0; i < indent; ++i)
   printf (" ");
      printf ("}\n");
  } else
      printf ("} indent = %d\n", indent / 2);
  break;
     case 135 : {
  int val;

  if (length <= sizeof(val)) {
      ret = der_get_integer (buf, length, &val, ((void*)0));
      if (ret)
   errx (1, "der_get_integer: %s", error_message (ret));
      printf ("integer %d\n", val);
  } else {
      heim_integer vali;
      char *p;

      ret = der_get_heim_integer(buf, length, &vali, ((void*)0));
      if (ret)
   errx (1, "der_get_heim_integer: %s",
         error_message (ret));
      ret = der_print_hex_heim_integer(&vali, &p);
      if (ret)
   errx (1, "der_print_hex_heim_integer: %s",
         error_message (ret));
      printf ("BIG NUM integer: length %lu %s\n",
       (unsigned long)length, p);
      free(p);
  }
  break;
     }
     case 133 : {
  heim_octet_string str;
  size_t i;

  ret = der_get_octet_string (buf, length, &str, ((void*)0));
  if (ret)
      errx (1, "der_get_octet_string: %s", error_message (ret));
  printf ("(length %lu), ", (unsigned long)length);

  if (inner_flag) {
      Der_class class;
      Der_type type;
      unsigned int tag;

      ret = der_get_tag(str.data, str.length,
          &class, &type, &tag, &sz);
      if (ret || sz > str.length ||
   type != CONS || tag != 131)
   goto just_an_octet_string;

      printf("{\n");
      loop (str.data, str.length, indent + 2);
      for (i = 0; i < indent; ++i)
   printf (" ");
      printf ("}\n");

  } else {
      unsigned char *uc;

  just_an_octet_string:
      uc = (unsigned char *)str.data;
      for (i = 0; i < min(16,length); ++i)
   printf ("%02x", uc[i]);
      printf ("\n");
  }
  free (str.data);
  break;
     }
     case 136 :
     case 132 : {
  heim_printable_string str;
  unsigned char *s;
  size_t n;

  memset(&str, 0, sizeof(str));

  ret = der_get_printable_string (buf, length, &str, ((void*)0));
  if (ret)
      errx (1, "der_get_general_string: %s",
     error_message (ret));
  s = str.data;
  printf("\"");
  for (n = 0; n < str.length; n++) {
      if (isprint((int)s[n]))
   printf ("%c", s[n]);
      else
   printf ("#%02x", s[n]);
  }
  printf("\"\n");
  der_free_printable_string(&str);
  break;
     }
     case 137 :
     case 138 :
     case 128 :
     case 129 : {
  heim_general_string str;

  ret = der_get_general_string (buf, length, &str, ((void*)0));
  if (ret)
      errx (1, "der_get_general_string: %s",
     error_message (ret));
  printf ("\"%s\"\n", str);
  free (str);
  break;
     }
     case 134: {
  heim_oid o;
  char *p;

  ret = der_get_oid(buf, length, &o, ((void*)0));
  if (ret)
      errx (1, "der_get_oid: %s", error_message (ret));
  ret = der_print_heim_oid(&o, '.', &p);
  der_free_oid(&o);
  if (ret)
      errx (1, "der_print_heim_oid: %s", error_message (ret));
  printf("%s\n", p);
  free(p);

  break;
     }
     case 139: {
  int num;

  ret = der_get_integer (buf, length, &num, ((void*)0));
  if (ret)
      errx (1, "der_get_enum: %s", error_message (ret));

  printf("%u\n", num);
  break;
     }
     default :
  printf ("%lu bytes\n", (unsigned long)length);
  break;
     }
 }
 if (end_tag) {
     if (loop_length == 0)
  errx(1, "zero length INDEFINITE data ? indent = %d\n",
       indent / 2);
     if (loop_length < length)
  length = loop_length;
     if (indefinite_form_loop == 0)
  errx(1, "internal error in indefinite form loop detection");
     indefinite_form_loop--;
 } else if (loop_length)
     errx(1, "internal error for INDEFINITE form");
 buf += length;
 len -= length;
    }
    return 0;
}
