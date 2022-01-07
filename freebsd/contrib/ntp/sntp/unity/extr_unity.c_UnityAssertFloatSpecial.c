
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _U_SINT ;
typedef float _UF ;
typedef int UNITY_LINE_TYPE ;
typedef int UNITY_FLOAT_TRAIT_T ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrint (char const*) ;
 int UnityPrintFloat (float const) ;
 char const* UnityStrDet ;
 char const* UnityStrExpected ;
 char const* UnityStrInf ;
 char const* UnityStrNaN ;
 char const* UnityStrNegInf ;
 char const* UnityStrNot ;
 char const* UnityStrWas ;
 int UnityTestResultsFailBegin (int const) ;
 float f_zero ;

void UnityAssertFloatSpecial(const _UF actual,
                             const char* msg,
                             const UNITY_LINE_TYPE lineNumber,
                             const UNITY_FLOAT_TRAIT_T style)
{
    const char* trait_names[] = { UnityStrInf, UnityStrNegInf, UnityStrNaN, UnityStrDet };
    _U_SINT should_be_trait = ((_U_SINT)style & 1);
    _U_SINT is_trait = !should_be_trait;
    _U_SINT trait_index = style >> 1;

    UNITY_SKIP_EXECUTION;

    switch(style)
    {


        case 134:
        case 130:
            is_trait = ((1.0f / f_zero) == actual) ? 1 : 0;
            break;
        case 132:
        case 128:
            is_trait = ((-1.0f / f_zero) == actual) ? 1 : 0;
            break;


        case 133:
        case 129:
            is_trait = (actual == actual) ? 0 : 1;
            break;


        case 135:
        case 131:
            if ( (actual != actual) || ((1.0f / f_zero) == actual) || ((-1.0f / f_zero) == actual) )
                is_trait = 0;
            else
                is_trait = 1;
            break;
 default:
     ;
    }

    if (is_trait != should_be_trait)
    {
        UnityTestResultsFailBegin(lineNumber);
        UnityPrint(UnityStrExpected);
        if (!should_be_trait)
            UnityPrint(UnityStrNot);
        UnityPrint(trait_names[trait_index]);
        UnityPrint(UnityStrWas);



        if (should_be_trait)
            UnityPrint(UnityStrNot);
        UnityPrint(trait_names[trait_index]);

        UnityAddMsgIfSpecified(msg);
        UNITY_FAIL_AND_BAIL;
    }
}
