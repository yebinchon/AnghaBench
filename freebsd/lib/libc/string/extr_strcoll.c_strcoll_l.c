
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct xlocale_collate {scalar_t__ __collate_load_error; } ;
typedef int mbstate_t ;
typedef TYPE_1__* locale_t ;
struct TYPE_6__ {scalar_t__* components; } ;


 int FIX_LOCALE (TYPE_1__*) ;
 size_t XLC_COLLATE ;
 int free (int *) ;
 int * malloc (size_t) ;
 size_t mbsrtowcs_l (int *,char const**,size_t,int *,TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int wcscoll_l (int *,int *,TYPE_1__*) ;

int
strcoll_l(const char *s, const char *s2, locale_t locale)
{
 int ret;
 wchar_t *t1 = ((void*)0), *t2 = ((void*)0);
 wchar_t *w1 = ((void*)0), *w2 = ((void*)0);
 const char *cs1, *cs2;
 mbstate_t mbs1;
 mbstate_t mbs2;
 size_t sz1, sz2;

 memset(&mbs1, 0, sizeof (mbstate_t));
 memset(&mbs2, 0, sizeof (mbstate_t));







 cs1 = s;
 cs2 = s2;

 FIX_LOCALE(locale);
 struct xlocale_collate *table =
  (struct xlocale_collate*)locale->components[XLC_COLLATE];

 if (table->__collate_load_error)
  goto error;

 sz1 = strlen(s) + 1;
 sz2 = strlen(s2) + 1;






 if ((t1 = malloc(sz1 * sizeof (wchar_t))) == ((void*)0))
  goto error;
 w1 = t1;
 if ((t2 = malloc(sz2 * sizeof (wchar_t))) == ((void*)0))
  goto error;
 w2 = t2;

 if ((mbsrtowcs_l(w1, &cs1, sz1, &mbs1, locale)) == (size_t)-1)
  goto error;

 if ((mbsrtowcs_l(w2, &cs2, sz2, &mbs2, locale)) == (size_t)-1)
  goto error;

 ret = wcscoll_l(w1, w2, locale);
 free(t1);
 free(t2);

 return (ret);

error:
 free(t1);
 free(t2);
 return (strcmp(s, s2));
}
