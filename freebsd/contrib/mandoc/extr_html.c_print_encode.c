
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int flags; } ;
typedef int numbuf ;
typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
 int HTML_NOSPACE ;
 int HTML_SKIPCHAR ;
 int TAG_BR ;
 int html_setfont (struct html*,int) ;
 int mandoc_escape (char const**,char const**,int*) ;
 int mchars_num2char (char const*,int) ;
 int mchars_num2uc (char const*,int) ;
 int mchars_spec2cp (char const*,int) ;
 int print_byte (struct html*,char const) ;
 int print_endword (struct html*) ;
 scalar_t__ print_escape (struct html*,int) ;
 int print_metaf (struct html*) ;
 int print_otag (struct html*,int ,char*) ;
 int print_word (struct html*,char*) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char const*,char) ;
 size_t strcspn (char const*,char const*) ;

__attribute__((used)) static int
print_encode(struct html *h, const char *p, const char *pend, int norecurse)
{
 char numbuf[16];
 const char *seq;
 size_t sz;
 int c, len, breakline, nospace;
 enum mandoc_esc esc;
 static const char rejs[10] = { ' ', '\\', '<', '>', '&', '"',
  145, 146, 147, '\0' };

 if (pend == ((void*)0))
  pend = strchr(p, '\0');

 breakline = 0;
 nospace = 0;

 while (p < pend) {
  if (HTML_SKIPCHAR & h->flags && '\\' != *p) {
   h->flags &= ~HTML_SKIPCHAR;
   p++;
   continue;
  }

  for (sz = strcspn(p, rejs); sz-- && p < pend; p++)
   print_byte(h, *p);

  if (breakline &&
      (p >= pend || *p == ' ' || *p == 145)) {
   print_otag(h, TAG_BR, "");
   breakline = 0;
   while (p < pend && (*p == ' ' || *p == 145))
    p++;
   continue;
  }

  if (p >= pend)
   break;

  if (*p == ' ') {
   print_endword(h);
   p++;
   continue;
  }

  if (print_escape(h, *p++))
   continue;

  esc = mandoc_escape(&p, &seq, &len);
  switch (esc) {
  case 141:
  case 136:
  case 139:
  case 137:
  case 140:
  case 138:
  case 135:
   if (0 == norecurse) {
    h->flags |= HTML_NOSPACE;
    if (html_setfont(h, esc))
     print_metaf(h);
    h->flags &= ~HTML_NOSPACE;
   }
   continue;
  case 131:
   h->flags |= HTML_SKIPCHAR;
   continue;
  case 142:
   continue;
  default:
   break;
  }

  if (h->flags & HTML_SKIPCHAR) {
   h->flags &= ~HTML_SKIPCHAR;
   continue;
  }

  switch (esc) {
  case 128:

   c = mchars_num2uc(seq + 1, len - 1);
   break;
  case 133:
   c = mchars_num2char(seq, len);
   if (c < 0)
    continue;
   break;
  case 130:
   c = mchars_spec2cp(seq, len);
   if (c <= 0)
    continue;
   break;
  case 129:
   c = *seq;
   break;
  case 143:
   print_word(h, "html");
   continue;
  case 144:
   breakline = 1;
   continue;
  case 134:
   if ('\0' == *p)
    nospace = 1;
   continue;
  case 132:
   if (len == 0)
    continue;
   c = seq[len - 1];
   break;
  default:
   continue;
  }
  if ((c < 0x20 && c != 0x09) ||
      (c > 0x7E && c < 0xA0))
   c = 0xFFFD;
  if (c > 0x7E) {
   (void)snprintf(numbuf, sizeof(numbuf), "&#x%.4X;", c);
   print_word(h, numbuf);
  } else if (print_escape(h, c) == 0)
   print_byte(h, c);
 }

 return nospace;
}
