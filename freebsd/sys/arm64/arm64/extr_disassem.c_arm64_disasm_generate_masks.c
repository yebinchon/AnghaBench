
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct arm64_insn {char* name; char* format; int mask; int pattern; TYPE_1__* tokens; } ;
struct TYPE_2__ {char* name; int pos; int len; } ;


 int ARM64_MAX_TOKEN_CNT ;
 int ARM64_MAX_TOKEN_LEN ;
 int INSN_SIZE ;
 int NBBY ;
 int memset (char*,int ,int) ;
 int printf (char*,char*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static void
arm64_disasm_generate_masks(struct arm64_insn *tab)
{
 uint32_t mask, val;
 int a, i;
 int len, ret;
 int token = 0;
 char *format;
 int error;

 while (tab->name != ((void*)0)) {
  mask = 0;
  val = 0;
  format = tab->format;
  token = 0;
  error = 0;





  a = (INSN_SIZE * NBBY) - 1;
  while (*format != '\0' && (a >= 0)) {
   switch(*format) {
   case '0':

    mask |= (1 << a);
    a--;
    format++;
    break;
   case '1':

    mask |= (1 << a);
    val |= (1 << a);
    a--;
    format++;
    break;
   case '|':

    format++;
    break;
   default:

    memset(tab->tokens[token].name, 0,
        sizeof(tab->tokens[token].name));
    i = 0;
    while (*format != '(') {
     tab->tokens[token].name[i] = *format;
     i++;
     format++;
     if (i >= ARM64_MAX_TOKEN_LEN) {
      printf("ERROR: token too long in op %s\n",
          tab->name);
      error = 1;
      break;
     }
    }
    if (error != 0)
     break;


    ret = sscanf(format, "(%d)", &len);
    if (ret == 1) {
     if (token >= ARM64_MAX_TOKEN_CNT) {
      printf("ERROR: to many tokens in op %s\n",
          tab->name);
      error = 1;
      break;
     }

     a -= len;
     tab->tokens[token].pos = a + 1;
     tab->tokens[token].len = len;
     token++;
    }


    while (*format != 0 && *format != '|')
     format++;
   }
  }


  tab->mask = mask;
  tab->pattern = val;







  if (*format != 0 || (a != -1) || (error != 0)) {
   tab->mask = 0;
   tab->pattern = 0xffffffff;
   printf("ERROR: skipping instruction op %s\n",
       tab->name);
  }

  tab++;
 }
}
