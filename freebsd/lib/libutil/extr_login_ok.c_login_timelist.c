
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct login_time {int lt_dow; } ;
typedef struct login_time login_time_t ;
typedef int login_cap_t ;


 int LTM_NONE ;
 char** login_getcaplist (int *,char const*,int *) ;
 struct login_time parse_lt (char const*) ;
 struct login_time* realloc (struct login_time*,int) ;

login_time_t *
login_timelist(login_cap_t *lc, char const *cap, int *ltno,
        login_time_t **ltptr)
{
    int j = 0;
    struct login_time *lt = ((void*)0);
    const char **tl;

    if ((tl = login_getcaplist(lc, cap, ((void*)0))) != ((void*)0)) {

 while (tl[j++] != ((void*)0))
     ;
 if (*ltno >= j)
     lt = *ltptr;
 else if ((lt = realloc(*ltptr, j * sizeof(struct login_time))) != ((void*)0)) {
     *ltno = j;
     *ltptr = lt;
 }
 if (lt != ((void*)0)) {
     int i = 0;

     for (--j; i < j; i++)
  lt[i] = parse_lt(tl[i]);
     lt[i].lt_dow = LTM_NONE;
 }
    }
    return lt;
}
