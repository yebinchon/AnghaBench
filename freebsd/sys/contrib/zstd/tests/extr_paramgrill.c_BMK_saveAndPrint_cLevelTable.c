
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winnerInfo_t ;
typedef int FILE ;


 int BMK_print_cLevelTable (int * const,int const*,size_t const) ;
 int SEEK_SET ;
 int fflush (int * const) ;
 int fseek (int * const,int ,int ) ;
 int * const stdout ;

__attribute__((used)) static void
BMK_saveAndPrint_cLevelTable(FILE* const f,
                       const winnerInfo_t* winners,
                       const size_t srcSize)
{
    fseek(f, 0, SEEK_SET);
    BMK_print_cLevelTable(f, winners, srcSize);
    fflush(f);
    BMK_print_cLevelTable(stdout, winners, srcSize);
}
