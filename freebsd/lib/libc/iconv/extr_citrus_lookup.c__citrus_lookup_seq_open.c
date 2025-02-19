
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_ignore_case; scalar_t__ cl_keylen; int * cl_key; } ;


 int ENOENT ;
 int errno ;
 int free (struct _citrus_lookup*) ;
 struct _citrus_lookup* malloc (int) ;
 int seq_open_db (struct _citrus_lookup*,char const*) ;
 int seq_open_plain (struct _citrus_lookup*,char const*) ;

int
_citrus_lookup_seq_open(struct _citrus_lookup **rcl, const char *name,
    int ignore_case)
{
 int ret;
 struct _citrus_lookup *cl;

 cl = malloc(sizeof(*cl));
 if (cl == ((void*)0))
  return (errno);

 cl->cl_key = ((void*)0);
 cl->cl_keylen = 0;
 cl->cl_ignore_case = ignore_case;
 ret = seq_open_db(cl, name);
 if (ret == ENOENT)
  ret = seq_open_plain(cl, name);
 if (!ret)
  *rcl = cl;
 else
  free(cl);

 return (ret);
}
