
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int nl_item ;
typedef TYPE_2__* locale_t ;
struct TYPE_24__ {scalar_t__ thousands_sep; scalar_t__ decimal_point; } ;
struct TYPE_23__ {scalar_t__ md_order; scalar_t__* alt_month; scalar_t__* mon; scalar_t__* month; scalar_t__* wday; scalar_t__* weekday; scalar_t__ pm; scalar_t__ am; scalar_t__ ampm_fmt; scalar_t__ X_fmt; scalar_t__ x_fmt; scalar_t__ c_fmt; } ;
struct TYPE_22__ {char p_cs_precedes; char n_cs_precedes; } ;
struct TYPE_21__ {char* csym; } ;
struct TYPE_20__ {char* __encoding; } ;
struct TYPE_19__ {TYPE_1__* runes; } ;
struct TYPE_18__ {scalar_t__ nostr; scalar_t__ yesstr; scalar_t__ noexpr; scalar_t__ yesexpr; } ;
struct TYPE_17__ {char* mon_decimal_point; scalar_t__ currency_symbol; } ;
 char CHAR_MAX ;
 int FIX_LOCALE (TYPE_2__*) ;
 TYPE_14__* XLOCALE_CTYPE (TYPE_2__*) ;


 size_t _REL (int const) ;
 TYPE_12__* __get_current_messages_locale (TYPE_2__*) ;
 TYPE_10__* __get_current_monetary_locale (TYPE_2__*) ;
 TYPE_8__* __get_current_numeric_locale (TYPE_2__*) ;
 TYPE_6__* __get_current_time_locale (TYPE_2__*) ;
 TYPE_4__* localeconv_l (TYPE_2__*) ;
 char* reallocf (char*,int) ;
 int strcmp (char const*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;

char *
nl_langinfo_l(nl_item item, locale_t loc)
{
   char *ret, *cs;
   const char *s;
   FIX_LOCALE(loc);

   switch (item) {
 case 164:
  s = XLOCALE_CTYPE(loc)->runes->__encoding;
  if (strcmp(s, "EUC-CN") == 0)
   ret = "eucCN";
  else if (strcmp(s, "EUC-JP") == 0)
   ret = "eucJP";
  else if (strcmp(s, "EUC-KR") == 0)
   ret = "eucKR";
  else if (strcmp(s, "EUC-TW") == 0)
   ret = "eucTW";
  else if (strcmp(s, "BIG5") == 0)
   ret = "Big5";
  else if (strcmp(s, "MSKanji") == 0)
   ret = "SJIS";
  else if (strcmp(s, "NONE") == 0)
   ret = "US-ASCII";
  else if (strncmp(s, "NONE:", 5) == 0)
   ret = (char *)(s + 5);
  else
   ret = (char *)s;
  break;
 case 153:
  ret = (char *) __get_current_time_locale(loc)->c_fmt;
  break;
 case 155:
  ret = (char *) __get_current_time_locale(loc)->x_fmt;
  break;
 case 131:
  ret = (char *) __get_current_time_locale(loc)->X_fmt;
  break;
 case 130:
  ret = (char *) __get_current_time_locale(loc)->ampm_fmt;
  break;
 case 165:
  ret = (char *) __get_current_time_locale(loc)->am;
  break;
 case 134:
  ret = (char *) __get_current_time_locale(loc)->pm;
  break;
 case 162: case 161: case 160:
 case 159: case 158: case 157: case 156:
  ret = (char*) __get_current_time_locale(loc)->weekday[_REL(162)];
  break;
 case 197: case 196: case 195:
 case 194: case 193: case 192: case 191:
  ret = (char*) __get_current_time_locale(loc)->wday[_REL(197)];
  break;
 case 148: case 144: case 143: case 142:
 case 141: case 140: case 139: case 138:
 case 137: case 147: case 146: case 145:
  ret = (char*) __get_current_time_locale(loc)->month[_REL(148)];
  break;
 case 190: case 186: case 185: case 184:
 case 183: case 182: case 181: case 180:
 case 179: case 189: case 188: case 187:
  ret = (char*) __get_current_time_locale(loc)->mon[_REL(190)];
  break;
 case 178: case 174: case 173: case 172:
 case 171: case 170: case 169: case 168:
 case 167: case 177: case 176: case 175:
  ret = (char*)
      __get_current_time_locale(loc)->alt_month[_REL(178)];
  break;
 case 152:

  ret = "";
  break;
 case 151:

  ret = "";
  break;
 case 150:

  ret = "";
  break;
 case 149:

  ret = "";
  break;
 case 166:

  ret = "";
  break;
 case 133:
  ret = (char*) __get_current_numeric_locale(loc)->decimal_point;
  break;
 case 132:
  ret = (char*) __get_current_numeric_locale(loc)->thousands_sep;
  break;
 case 129:
  ret = (char*) __get_current_messages_locale(loc)->yesexpr;
  break;
 case 136:
  ret = (char*) __get_current_messages_locale(loc)->noexpr;
  break;





 case 128:
  ret = (char*) __get_current_messages_locale(loc)->yesstr;
  break;
 case 135:
  ret = (char*) __get_current_messages_locale(loc)->nostr;
  break;



 case 163:
  ret = "";
  cs = (char*) __get_current_monetary_locale(loc)->currency_symbol;
  if (*cs != '\0') {
   char pos = localeconv_l(loc)->p_cs_precedes;

   if (pos == localeconv_l(loc)->n_cs_precedes) {
    char psn = '\0';

    if (pos == CHAR_MAX) {
     if (strcmp(cs, __get_current_monetary_locale(loc)->mon_decimal_point) == 0)
      psn = '.';
    } else
     psn = pos ? '-' : '+';
    if (psn != '\0') {
     int clen = strlen(cs);

     if ((loc->csym = reallocf(loc->csym, clen + 2)) != ((void*)0)) {
      *loc->csym = psn;
      strcpy(loc->csym + 1, cs);
      ret = loc->csym;
     }
    }
   }
  }
  break;
 case 154:
  ret = (char *) __get_current_time_locale(loc)->md_order;
  break;
 default:
  ret = "";
   }
   return (ret);
}
