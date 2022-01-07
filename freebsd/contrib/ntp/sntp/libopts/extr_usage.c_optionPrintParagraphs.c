
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AGDUPSTR (char*,char const*,char*) ;
 int AGFREE (char const*) ;
 char HT ;
 char NL ;
 char NUL ;
 int isspace (int) ;
 int print_one_paragraph (char const*,int,int *) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;

void
optionPrintParagraphs(char const * text, bool plain, FILE * fp)
{
    size_t len = strlen(text);
    char * buf;

    if (plain || (len < 256))



    {
        print_one_paragraph(text, plain, fp);
        return;
    }

    AGDUPSTR(buf, text, "ppara");
    text = buf;

    for (;;) {
        char * scan;

        if (len < 256) {
        done:
            print_one_paragraph(buf, plain, fp);
            break;
        }
        scan = buf;

    try_longer:
        scan = strchr(scan, NL);
        if (scan == ((void*)0))
            goto done;

        if ((scan - buf) < 40) {
            scan++;
            goto try_longer;
        }

        scan++;
        if ((! isspace((int)*scan)) || (*scan == HT))



            goto try_longer;

        if (*scan == NL) {




            while (*++scan == NL) ;

        } else {
            char * p = scan;
            int sp_ct = 0;

            while (*p == ' ') {
                if (++sp_ct >= 8) {



                    scan = p;
                    goto try_longer;
                }
                p++;
            }
        }





        {
            char svch = *scan;
            *scan = NUL;
            print_one_paragraph(buf, plain, fp);
            len -= scan - buf;
            if (len <= 0)
                break;
            *scan = svch;
            buf = scan;
        }
    }
    AGFREE(text);
}
