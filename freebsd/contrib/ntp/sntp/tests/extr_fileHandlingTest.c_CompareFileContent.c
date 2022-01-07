
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int * fgets (char*,size_t,int *) ;
 int printf (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

bool
CompareFileContent(
 FILE * expected,
 FILE * actual
 )
{
 int currentLine = 1;

 char actualLine[1024];
 char expectedLine[1024];
 size_t lenAct = sizeof actualLine;
 size_t lenExp = sizeof expectedLine;

 while ( ( (fgets(actualLine, lenAct, actual)) != ((void*)0))
       && ( (fgets(expectedLine, lenExp, expected)) != ((void*)0) )
       ) {


  if( strcmp(actualLine,expectedLine) !=0 ){
   printf("Comparision failed on line %d",currentLine);
   return FALSE;
  }

  currentLine++;
 }

 return TRUE;
}
