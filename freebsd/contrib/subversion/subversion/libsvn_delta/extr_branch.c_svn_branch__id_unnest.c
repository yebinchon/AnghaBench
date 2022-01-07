
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrndup (int *,char const*,int) ;
 int atoi (char const*) ;
 char* strrchr (char const*,char) ;

void
svn_branch__id_unnest(const char **outer_bid,
                      int *outer_eid,
                      const char *bid,
                      apr_pool_t *result_pool)
{
  char *last_dot = strrchr(bid, '.');

  if (last_dot)
    {
      *outer_bid = apr_pstrndup(result_pool, bid, last_dot - bid);
      *outer_eid = atoi(last_dot + 1);
    }
  else
    {
      *outer_bid = ((void*)0);
      *outer_eid = atoi(bid + 1);
    }
}
