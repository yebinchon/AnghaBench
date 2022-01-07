
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {size_t (* width ) (struct termp const*,int ) ;int enc; int type; } ;
typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
 int TERMENC_ASCII ;
 int TERMTYPE_PDF ;
 int TERMTYPE_PS ;
 char* ascii_uc2str (int) ;
 scalar_t__ cond_width (struct termp const*,char,int*) ;
 int mandoc_escape (char const**,char const**,int*) ;
 int mchars_num2char (char const*,int) ;
 int mchars_num2uc (char const*,int) ;
 int mchars_spec2cp (char const*,int) ;
 char* mchars_spec2str (char const*,int,size_t*) ;
 size_t strcspn (char const*,char const*) ;
 size_t strlen (char const*) ;
 size_t stub1 (struct termp const*,int ) ;
 size_t stub2 (struct termp const*,int ) ;

size_t
term_strlen(const struct termp *p, const char *cp)
{
 size_t sz, rsz, i;
 int ssz, skip, uc;
 const char *seq, *rhs;
 enum mandoc_esc esc;
 static const char rej[] = { '\\', 135, 136,
   137, '\0' };







 sz = 0;
 skip = 0;
 while ('\0' != *cp) {
  rsz = strcspn(cp, rej);
  for (i = 0; i < rsz; i++)
   sz += cond_width(p, *cp++, &skip);

  switch (*cp) {
  case '\\':
   cp++;
   rhs = ((void*)0);
   esc = mandoc_escape(&cp, &seq, &ssz);
   switch (esc) {
   case 128:
    uc = mchars_num2uc(seq + 1, ssz - 1);
    break;
   case 133:
    uc = mchars_num2char(seq, ssz);
    if (uc < 0)
     continue;
    break;
   case 130:
    if (p->enc == TERMENC_ASCII) {
     rhs = mchars_spec2str(seq, ssz, &rsz);
     if (rhs != ((void*)0))
      break;
    } else {
     uc = mchars_spec2cp(seq, ssz);
     if (uc > 0)
      sz += cond_width(p, uc, &skip);
    }
    continue;
   case 129:
    uc = *seq;
    break;
   case 134:
    if (p->type == TERMTYPE_PDF) {
     rhs = "pdf";
     rsz = 3;
    } else if (p->type == TERMTYPE_PS) {
     rhs = "ps";
     rsz = 2;
    } else if (p->enc == TERMENC_ASCII) {
     rhs = "ascii";
     rsz = 5;
    } else {
     rhs = "utf8";
     rsz = 4;
    }
    break;
   case 131:
    skip = 1;
    continue;
   case 132:
    rsz = 0;
    rhs = seq + ssz;
    while (seq < rhs) {
     if (*seq == '\\') {
      mandoc_escape(&seq, ((void*)0), ((void*)0));
      continue;
     }
     i = (*p->width)(p, *seq++);
     if (rsz < i)
      rsz = i;
    }
    sz += rsz;
    continue;
   default:
    continue;
   }






   if (rhs == ((void*)0)) {
    if (p->enc == TERMENC_ASCII) {
     rhs = ascii_uc2str(uc);
     rsz = strlen(rhs);
    } else {
     if ((uc < 0x20 && uc != 0x09) ||
         (uc > 0x7E && uc < 0xA0))
      uc = 0xFFFD;
     sz += cond_width(p, uc, &skip);
     continue;
    }
   }

   if (skip) {
    skip = 0;
    break;
   }






   for (i = 0; i < rsz; i++)
    sz += (*p->width)(p, *rhs++);
   break;
  case 135:
   sz += cond_width(p, ' ', &skip);
   cp++;
   break;
  case 136:
   sz += cond_width(p, '-', &skip);
   cp++;
   break;
  default:
   break;
  }
 }

 return sz;
}
