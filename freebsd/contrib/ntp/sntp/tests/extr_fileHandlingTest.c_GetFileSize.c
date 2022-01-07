
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;

int
GetFileSize(
 FILE * file
 )
{
 fseek(file, 0L, SEEK_END);
 int length = ftell(file);
 fseek(file, 0L, SEEK_SET);

 return length;
}
