
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_7__ {char const* valid; int offset; int action; } ;
typedef TYPE_1__ rule ;
typedef int ms ;
struct TYPE_9__ {int tm_gmtoff; } ;
struct TYPE_8__ {int offhours; int offminutes; TYPE_3__ base; } ;
typedef TYPE_2__ match_state ;
typedef TYPE_3__ apr_time_exp_t ;
typedef int apr_int32_t ;




 int FALSE ;




 int TRUE ;

 TYPE_1__* find_rule (char const) ;
 int memset (TYPE_2__*,int ,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static svn_boolean_t
template_match(apr_time_exp_t *expt, svn_boolean_t *localtz,
               const char *template, const char *value)
{
  int multiplier = 100000;
  int tzind = 0;
  match_state ms;
  char *base = (char *)&ms;

  memset(&ms, 0, sizeof(ms));

  for (;;)
    {
      const rule *match = find_rule(*template++);
      char vchar = *value++;
      apr_int32_t *place;

      if (!match || (match->valid
                     && (!vchar || !strchr(match->valid, vchar))))
        return FALSE;





      place = (apr_int32_t *)(base + match->offset);
      switch (match->action)
        {
        case 133:
          *place = *place * 10 + vchar - '0';
          continue;
        case 132:
          *place += (vchar - '0') * multiplier;
          multiplier /= 10;
          continue;
        case 128:
          tzind = vchar;
          continue;
        case 130:
          value--;
          continue;
        case 131:
          continue;
        case 129:
          if (!vchar)
            break;
          match = find_rule(*template);
          if (!strchr(match->valid, vchar))
            template = strchr(template, ']') + 1;
          value--;
          continue;
        case 134:
          if (vchar)
            return FALSE;
          break;
        }

      break;
    }


  if (ms.offhours > 23 || ms.offminutes > 59)
    return FALSE;



  switch (tzind)
    {
    case '+':
      ms.base.tm_gmtoff = ms.offhours * 3600 + ms.offminutes * 60;
      break;
    case '-':
      ms.base.tm_gmtoff = -(ms.offhours * 3600 + ms.offminutes * 60);
      break;
    }

  *expt = ms.base;
  *localtz = (tzind == 0);
  return TRUE;
}
