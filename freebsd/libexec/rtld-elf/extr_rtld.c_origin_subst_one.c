
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* origin_path; } ;
typedef TYPE_1__ Obj_Entry ;


 int free (char*) ;
 int memcpy (char*,char const*,int) ;
 int obj_resolve_origin (TYPE_1__*) ;
 int strcat (char*,char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;
 char* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
origin_subst_one(Obj_Entry *obj, char *real, const char *kw,
    const char *subst, bool may_free)
{
 char *p, *p1, *res, *resp;
 int subst_len, kw_len, subst_count, old_len, new_len;

 kw_len = strlen(kw);





 for (p = real, subst_count = 0;; p = p1 + kw_len, subst_count++) {
  p1 = strstr(p, kw);
  if (p1 == ((void*)0))
   break;
 }
 if (subst_count == 0 || (obj != ((void*)0) && !obj_resolve_origin(obj)))
  return (may_free ? real : xstrdup(real));
 if (obj != ((void*)0))
  subst = obj->origin_path;





 subst_len = strlen(subst);
 old_len = strlen(real);
 new_len = old_len + (subst_len - kw_len) * subst_count;
 res = xmalloc(new_len + 1);




 for (p = real, resp = res, *resp = '\0';;) {
  p1 = strstr(p, kw);
  if (p1 != ((void*)0)) {

   memcpy(resp, p, p1 - p);
   resp += p1 - p;

   memcpy(resp, subst, subst_len);
   resp += subst_len;
   *resp = '\0';
   p = p1 + kw_len;
  } else
   break;
 }


 strcat(resp, p);
 if (may_free)
  free(real);
 return (res);
}
