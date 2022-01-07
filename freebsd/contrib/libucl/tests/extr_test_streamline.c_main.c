
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* key; int keylen; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context {int dummy; } ;
typedef int FILE ;


 int UCL_ARRAY ;
 int UCL_EMIT_CONFIG ;
 int UCL_OBJECT ;
 int UCL_STRING_ESCAPE ;
 int UCL_STRING_TRIM ;
 int assert (int ) ;
 int errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * stdout ;
 struct ucl_emitter_functions* ucl_object_emit_file_funcs (int *) ;
 int ucl_object_emit_funcs_free (struct ucl_emitter_functions*) ;
 int ucl_object_emit_streamline_add_object (struct ucl_emitter_context*,TYPE_1__*) ;
 int ucl_object_emit_streamline_end_container (struct ucl_emitter_context*) ;
 int ucl_object_emit_streamline_finish (struct ucl_emitter_context*) ;
 struct ucl_emitter_context* ucl_object_emit_streamline_new (TYPE_1__*,int ,struct ucl_emitter_functions*) ;
 int ucl_object_emit_streamline_start_container (struct ucl_emitter_context*,TYPE_1__*) ;
 TYPE_1__* ucl_object_fromdouble (double) ;
 TYPE_1__* ucl_object_fromint (int) ;
 TYPE_1__* ucl_object_fromstring_common (char*,int ,int) ;
 int ucl_object_insert_key (TYPE_1__*,TYPE_1__*,char*,int ,int) ;
 TYPE_1__* ucl_object_typed_new (int ) ;
 int ucl_object_unref (TYPE_1__*) ;

int
main (int argc, char **argv)
{
 ucl_object_t *obj, *cur, *ar;
 FILE *out;
 const char *fname_out = ((void*)0);
 struct ucl_emitter_context *ctx;
 struct ucl_emitter_functions *f;
 int ret = 0;

 switch (argc) {
 case 2:
  fname_out = argv[1];
  break;
 }

 if (fname_out != ((void*)0)) {
  out = fopen (fname_out, "w");
  if (out == ((void*)0)) {
   exit (-errno);
  }
 }
 else {
  out = stdout;
 }

 obj = ucl_object_typed_new (UCL_OBJECT);


 cur = ucl_object_fromstring_common ("  test string    ", 0, UCL_STRING_TRIM);
 ucl_object_insert_key (obj, cur, "key1", 0, 0);
 cur = ucl_object_fromstring_common ("  test \nstring\n    ", 0, UCL_STRING_TRIM | UCL_STRING_ESCAPE);
 ucl_object_insert_key (obj, cur, "key2", 0, 0);
 cur = ucl_object_fromstring_common ("  test string    \n", 0, 0);
 ucl_object_insert_key (obj, cur, "key3", 0, 0);

 f = ucl_object_emit_file_funcs (out);
 ctx = ucl_object_emit_streamline_new (obj, UCL_EMIT_CONFIG, f);

 assert (ctx != ((void*)0));


 ar = ucl_object_typed_new (UCL_ARRAY);
 ar->key = "key4";
 ar->keylen = sizeof ("key4") - 1;

 ucl_object_emit_streamline_start_container (ctx, ar);
 cur = ucl_object_fromint (10);
 ucl_object_emit_streamline_add_object (ctx, cur);
 cur = ucl_object_fromdouble (10.1);
 ucl_object_emit_streamline_add_object (ctx, cur);
 cur = ucl_object_fromdouble (9.999);
 ucl_object_emit_streamline_add_object (ctx, cur);


 ucl_object_emit_streamline_end_container (ctx);
 ucl_object_emit_streamline_finish (ctx);
 ucl_object_emit_funcs_free (f);
 ucl_object_unref (obj);

 fclose (out);

 return ret;
}
