
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
string_size(char const * scan, size_t nl_len)
{



    size_t res_ln = 3;

    for (;;) {
        char ch = *(scan++);
        if ((ch >= ' ') && (ch <= '~')) {




            res_ln += ((ch == '"') || (ch == '\\')) ? 2 : 1;
        }





        else switch (ch) {
        case 129:
            return res_ln;

        case 130:
            res_ln += nl_len;
            break;

        case 131:
        case 135:
        case 134:
        case 132:
        case 133:
        case 128:
            res_ln += 2;
            break;

        default:
            res_ln += 4;
        }
    }
}
