
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CAST64 (int ) ;
 int printf (char const*,...) ;

__attribute__((used)) static void __cvmx_pow_display_list(const char *name, int name_param, int valid, int has_one, uint64_t head, uint64_t tail)
{
    printf(name, name_param);
    printf(": ");
    if (valid)
    {
        if (has_one)
            printf("One element index=%llu(0x%llx)\n", CAST64(head), CAST64(head));
        else
            printf("Multiple elements head=%llu(0x%llx) tail=%llu(0x%llx)\n", CAST64(head), CAST64(head), CAST64(tail), CAST64(tail));
    }
    else
        printf("Empty\n");
}
