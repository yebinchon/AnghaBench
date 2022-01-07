
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libbe_deep_clone {char* bename; TYPE_1__* lbh; } ;
struct TYPE_2__ {char* root; } ;


 int BE_ERR_BADPATH ;
 int BE_ERR_SUCCESS ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strlcat (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
be_get_path(struct libbe_deep_clone *ldc, const char *dspath, char *result, int result_size)
{
 char *pos;
 char *child_dataset;


 pos = strstr(dspath, ldc->lbh->root);


 if (pos == ((void*)0))
  return (BE_ERR_BADPATH);


 snprintf(result, result_size, "%s/%s", ldc->lbh->root, ldc->bename);


 pos += strlen(ldc->lbh->root) + 1;


 if ((child_dataset = strchr(pos, '/')) != ((void*)0))
  strlcat(result, child_dataset, result_size);

 return (BE_ERR_SUCCESS);
}
