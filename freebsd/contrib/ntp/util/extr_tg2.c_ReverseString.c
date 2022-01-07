
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void
ReverseString(char *str)
 {
 int StringLength;
 int IndexCounter;
 int CentreOfString;
 char TemporaryCharacter;


 StringLength = strlen(str);
 CentreOfString = (StringLength/2)+1;
 for (IndexCounter = StringLength; IndexCounter >= CentreOfString; IndexCounter--)
  {
  TemporaryCharacter = str[IndexCounter-1];
  str[IndexCounter-1] = str[StringLength-IndexCounter];
  str[StringLength-IndexCounter] = TemporaryCharacter;
  }
 }
