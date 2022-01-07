
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int paramValues_t ;
typedef int contexts_t ;
typedef int buffers_t ;
typedef int BMK_benchResult_t ;
typedef int BMK_benchOutcome_t ;


 int BASE_CLEVEL ;
 int BMK_benchMemInvertible (int ,int ,int ,int *,int ,int) ;
 int BMK_both ;
 int BMK_extract_benchResult (int const) ;
 int BMK_isSuccessful_benchOutcome (int const) ;

__attribute__((used)) static int BMK_benchParam ( BMK_benchResult_t* resultPtr,
                            buffers_t buf, contexts_t ctx,
                            paramValues_t cParams)
{
    BMK_benchOutcome_t const outcome = BMK_benchMemInvertible(buf, ctx,
                                                        BASE_CLEVEL, &cParams,
                                                        BMK_both, 3);
    if (!BMK_isSuccessful_benchOutcome(outcome)) return 1;
    *resultPtr = BMK_extract_benchResult(outcome);
    return 0;
}
