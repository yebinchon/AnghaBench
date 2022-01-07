
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_lookup {int cl_dblocator; int cl_key; int cl_db; int cl_keylen; scalar_t__ cl_ignore_case; scalar_t__ cl_rewind; } ;


 int _bcs_convert_to_lower (int ) ;
 int _db_locator_init (int *) ;
 int _db_lookup_by_s (int ,int ,struct _region*,int *) ;
 int free (int ) ;
 int strdup (char const*) ;
 int strlen (int ) ;

__attribute__((used)) static int
seq_lookup_db(struct _citrus_lookup *cl, const char *key, struct _region *data)
{

 cl->cl_rewind = 0;
 free(cl->cl_key);
 cl->cl_key = strdup(key);
 if (cl->cl_ignore_case)
  _bcs_convert_to_lower(cl->cl_key);
 cl->cl_keylen = strlen(cl->cl_key);
 _db_locator_init(&cl->cl_dblocator);
 return (_db_lookup_by_s(cl->cl_db, cl->cl_key, data,
     &cl->cl_dblocator));
}
