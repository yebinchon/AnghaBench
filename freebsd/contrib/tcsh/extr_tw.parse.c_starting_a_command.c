
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int EVEN (int) ;
 int FALSE ;
 char* Strchr (char*,char) ;
 int TRUE ;
 int iscmdmeta (char) ;

int
starting_a_command(Char *wordstart, Char *inputline)
{
    Char *ptr, *ncmdstart;
    int count, bsl;
    static Char
            cmdstart[] = {'`', ';', '&', '(', '|', '\0'},
            cmdalive[] = {' ', '\t', '\'', '"', '<', '>', '\0'};




    for (ptr = wordstart, count = 0;
  ptr >= inputline;
  count += (*ptr-- == '`'))
 continue;





    ncmdstart = cmdstart + EVEN(count);
    for (count = 0; wordstart >= inputline; wordstart--) {
 if (*wordstart == '\0')
     continue;
 if (Strchr(ncmdstart, *wordstart)) {
     for (ptr = wordstart, bsl = 0; *(--ptr) == '\\'; bsl++);
     if (bsl & 1) {
  wordstart--;
  continue;
     } else
  break;
 }



 if ((ptr = Strchr(cmdalive, *wordstart)) != ((void*)0))
     count = 1;
 if (count == 1 && !ptr)
     return (FALSE);
    }

    if (wordstart > inputline)
 switch (*wordstart) {
 case '&':
     while (wordstart > inputline &&
     (*--wordstart == ' ' || *wordstart == '\t'))
  continue;
     if (*wordstart == '>')
  return (FALSE);
     break;
 case '(':
     while (wordstart > inputline &&
     (*--wordstart == ' ' || *wordstart == '\t'))
  continue;
     if (!iscmdmeta(*wordstart) &&
  (*wordstart != ' ' && *wordstart != '\t'))
  return (FALSE);
     break;
 default:
     break;
 }
    return (TRUE);
}
