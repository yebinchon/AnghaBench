
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;
typedef int FILE ;


 int _db_factory_create (struct _citrus_db_factory**,int *,int *) ;
 int _db_factory_free (struct _citrus_db_factory*) ;
 int _db_hash_std ;
 int _region_head (struct _region*) ;
 int _region_size (struct _region*) ;
 int convert_line (struct _citrus_db_factory*,char*,size_t) ;
 int dump_db (struct _citrus_db_factory*,struct _region*) ;
 int errno ;
 char* fgetln (int *,size_t*) ;
 int fwrite (int ,int ,int,int *) ;

int
_citrus_lookup_factory_convert(FILE *out, FILE *in)
{
 struct _citrus_db_factory *df;
 struct _region r;
 char *line;
 size_t size;
 int ret;

 ret = _db_factory_create(&df, &_db_hash_std, ((void*)0));
 if (ret)
  return (ret);

 while ((line = fgetln(in, &size)) != ((void*)0))
  if ((ret = convert_line(df, line, size))) {
   _db_factory_free(df);
   return (ret);
  }

 ret = dump_db(df, &r);
 _db_factory_free(df);
 if (ret)
  return (ret);

 if (fwrite(_region_head(&r), _region_size(&r), 1, out) != 1)
  return (errno);

 return (0);
}
