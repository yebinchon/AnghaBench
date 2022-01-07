
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* sv; int iv; int dv; } ;
struct TYPE_5__ {int type; int len; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;
typedef int UT_string ;
 int free (int *) ;
 int ucl_utstring_append_double (int ,int *) ;
 int ucl_utstring_append_int (int ,int *) ;
 int ucl_utstring_append_len (char*,int,int *) ;
 unsigned char* utstring_body (int *) ;
 int utstring_new (int *) ;

unsigned char *
ucl_object_emit_single_json (const ucl_object_t *obj)
{
 UT_string *buf = ((void*)0);
 unsigned char *res = ((void*)0);

 if (obj == ((void*)0)) {
  return ((void*)0);
 }

 utstring_new (buf);

 if (buf != ((void*)0)) {
  switch (obj->type) {
  case 131:
   ucl_utstring_append_len ("object", 6, buf);
   break;
  case 136:
   ucl_utstring_append_len ("array", 5, buf);
   break;
  case 133:
   ucl_utstring_append_int (obj->value.iv, buf);
   break;
  case 134:
  case 129:
   ucl_utstring_append_double (obj->value.dv, buf);
   break;
  case 132:
   ucl_utstring_append_len ("null", 4, buf);
   break;
  case 135:
   if (obj->value.iv) {
    ucl_utstring_append_len ("true", 4, buf);
   }
   else {
    ucl_utstring_append_len ("false", 5, buf);
   }
   break;
  case 130:
   ucl_utstring_append_len (obj->value.sv, obj->len, buf);
   break;
  case 128:
   ucl_utstring_append_len ("userdata", 8, buf);
   break;
  }
  res = utstring_body (buf);
  free (buf);
 }

 return res;
}
