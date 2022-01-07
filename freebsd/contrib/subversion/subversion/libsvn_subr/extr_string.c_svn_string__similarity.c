
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_9__ {int* data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int apr_size_t ;


 int SVN_STRING__SIM_RANGE_MAX ;
 int svn_membuf__ensure (TYPE_2__*,int) ;
 int svn_membuf__nzero (TYPE_2__*,int const) ;

apr_size_t
svn_string__similarity(const svn_string_t *stringa,
                       const svn_string_t *stringb,
                       svn_membuf_t *buffer, apr_size_t *rlcs)
{
  const char *stra = stringa->data;
  const char *strb = stringb->data;
  const apr_size_t lena = stringa->len;
  const apr_size_t lenb = stringb->len;
  const apr_size_t total = lena + lenb;
  const char *enda = stra + lena;
  const char *endb = strb + lenb;
  apr_size_t lcs = 0;


  while (stra < enda && strb < endb && *stra == *strb)
    {
      ++stra; ++strb;
      ++lcs;
    }


  while (stra < enda && strb < endb)
    {
      --enda; --endb;
      if (*enda != *endb)
        {
          ++enda; ++endb;
          break;
        }

      ++lcs;
    }

  if (stra < enda && strb < endb)
    {
      const apr_size_t resta = enda - stra;
      const apr_size_t restb = endb - strb;
      const apr_size_t slots = (resta > restb ? restb : resta);
      apr_size_t *curr, *prev;
      const char *pstr;


      if (resta < restb)
        {
          pstr = stra;
          stra = strb;
          strb = pstr;

          pstr = enda;
          enda = endb;
          endb = pstr;
        }



      svn_membuf__ensure(buffer, 2 * (slots + 1) * sizeof(apr_size_t));
      svn_membuf__nzero(buffer, (slots + 2) * sizeof(apr_size_t));
      prev = buffer->data;
      curr = prev + slots + 1;


      for (pstr = stra; pstr < enda; ++pstr)
        {
          apr_size_t i;
          for (i = 1; i <= slots; ++i)
            {
              if (*pstr == strb[i-1])
                curr[i] = prev[i-1] + 1;
              else
                curr[i] = (curr[i-1] > prev[i] ? curr[i-1] : prev[i]);
            }


          {
            apr_size_t *const temp = prev;
            prev = curr;
            curr = temp;
          }
        }

      lcs += prev[slots];
    }

  if (rlcs)
    *rlcs = lcs;


  if (total)
    return ((2 * SVN_STRING__SIM_RANGE_MAX * lcs + total/2) / total);
  else
    return SVN_STRING__SIM_RANGE_MAX;
}
