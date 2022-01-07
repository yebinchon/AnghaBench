
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {scalar_t__ type; char* string; } ;
struct roff_man {TYPE_1__* last; } ;
struct TYPE_2__ {struct roff_node* next; struct roff_node* prev; } ;


 int MANDOCERR_DASHDASH ;
 scalar_t__ ROFFT_TEXT ;
 int isalpha (unsigned char) ;
 int mandoc_msg (int ,int,int,int *) ;
 int strlen (char*) ;

__attribute__((used)) static void
check_text_em(struct roff_man *mdoc, int ln, int pos, char *p)
{
 const struct roff_node *np, *nn;
 char *cp;

 np = mdoc->last->prev;
 nn = mdoc->last->next;



 for (cp = p; *cp != '\0'; cp++) {
  if (cp[0] != '-' || cp[1] != '-')
   continue;
  cp++;



  if (cp[1] == '-') {
   while (cp[1] == '-')
    cp++;
   continue;
  }



  if ((cp - p > 1 && cp[-2] != ' ') ||
      (cp[1] != '\0' && cp[1] != ' '))
   continue;



  if ((cp - p > 2 ?
       isalpha((unsigned char)cp[-3]) :
       np != ((void*)0) &&
       np->type == ROFFT_TEXT &&
       *np->string != '\0' &&
       isalpha((unsigned char)np->string[
         strlen(np->string) - 1])) ||
      (cp[1] != '\0' && cp[2] != '\0' ?
       isalpha((unsigned char)cp[2]) :
       nn != ((void*)0) &&
       nn->type == ROFFT_TEXT &&
       isalpha((unsigned char)*nn->string))) {
   mandoc_msg(MANDOCERR_DASHDASH,
       ln, pos + (int)(cp - p) - 1, ((void*)0));
   break;
  }
 }
}
