
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* continuePrompt ;
 int fflush (int ) ;
 int free (char*) ;
 char* local_getline (char*,int *) ;
 char* mainPrompt ;
 int printf (char*,char*) ;
 int shell_add_history (char*) ;
 char* shell_readline (char*) ;
 int * stdin ;
 int stdout ;

__attribute__((used)) static char *one_input_line(FILE *in, char *zPrior, int isContinuation){
  char *zPrompt;
  char *zResult;
  if( in!=0 ){
    zResult = local_getline(zPrior, in);
  }else{
    zPrompt = isContinuation ? continuePrompt : mainPrompt;





    free(zPrior);
    zResult = shell_readline(zPrompt);
    if( zResult && *zResult ) shell_add_history(zResult);

  }
  return zResult;
}
