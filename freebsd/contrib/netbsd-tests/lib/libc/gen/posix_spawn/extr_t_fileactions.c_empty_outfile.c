
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_REQUIRE (int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

__attribute__((used)) static void
empty_outfile(const char *restrict filename)
{
 FILE *f;

 f = fopen(filename, "w");
 ATF_REQUIRE(f != ((void*)0));
 fclose(f);
}
