
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_head {int dummy; } ;
struct _region {int dummy; } ;
typedef int FILE ;


 int STAILQ_INIT (struct src_head*) ;
 int _region_head (struct _region*) ;
 int _region_size (struct _region*) ;
 int convert_line (struct src_head*,char*,size_t) ;
 int dump_db (struct src_head*,struct _region*) ;
 int errno ;
 char* fgetln (int *,size_t*) ;
 int free_src (struct src_head*) ;
 int fwrite (int ,int ,int,int *) ;

int
_citrus_pivot_factory_convert(FILE *out, FILE *in)
{
 struct src_head sh;
 struct _region r;
 char *line;
 size_t size;
 int ret;

 STAILQ_INIT(&sh);

 while ((line = fgetln(in, &size)) != ((void*)0))
  if ((ret = convert_line(&sh, line, size))) {
   free_src(&sh);
   return (ret);
  }

 ret = dump_db(&sh, &r);
 free_src(&sh);
 if (ret)
  return (ret);

 if (fwrite(_region_head(&r), _region_size(&r), 1, out) != 1)
  return (errno);

 return (0);
}
