
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CGETS (int,int,char*) ;
 int xprintf (int ,int const*) ;

__attribute__((used)) static void
bad_spec(const Char *str)
{
    xprintf(CGETS(20, 4, "Bad key spec %S\n"), str);
}
