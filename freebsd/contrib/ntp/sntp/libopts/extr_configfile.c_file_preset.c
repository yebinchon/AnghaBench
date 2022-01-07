
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tmap_info_t ;
struct TYPE_11__ {int fOptSet; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_12__ {void* flags; } ;
typedef TYPE_2__ tOptState ;
typedef void* opt_state_mask_t ;


 int DIRECTION_CALLED ;
 int DIRECTION_PROCESS ;
 scalar_t__ IS_VAR_FIRST_CHAR (char) ;
 int MAP_PRIVATE ;
 char NL ;
 int OPTPROC_ERRSTOP ;
 int OPTPROC_PRESETTING ;
 TYPE_2__ OPTSTATE_INITIALIZER (int ) ;
 void* OPTST_DEFINED ;
 void* OPTST_SET ;
 int PRESET ;
 int PROT_READ ;
 int PROT_WRITE ;
 char* SPN_WHITESPACE_CHARS (char*) ;
 scalar_t__ TEXT_MMAP_FAILED_ADDR (char*) ;
 char* handle_cfg (TYPE_1__*,TYPE_2__*,char*,int) ;
 char* handle_comment (char*) ;
 char* handle_directive (TYPE_1__*,char*) ;
 char* handle_section (TYPE_1__*,char*) ;
 char* handle_struct (TYPE_1__*,TYPE_2__*,char*,int) ;
 char* strchr (char*,char) ;
 char* text_mmap (char const*,int,int ,int *) ;
 int text_munmap (int *) ;

__attribute__((used)) static void
file_preset(tOptions * opts, char const * fname, int dir)
{
    tmap_info_t cfgfile;
    tOptState optst = OPTSTATE_INITIALIZER(PRESET);
    opt_state_mask_t st_flags = optst.flags;
    opt_state_mask_t fl_save = opts->fOptSet;
    char * ftext =
        text_mmap(fname, PROT_READ|PROT_WRITE, MAP_PRIVATE, &cfgfile);

    if (TEXT_MMAP_FAILED_ADDR(ftext))
        return;




    opts->fOptSet &= ~OPTPROC_ERRSTOP;

    if (dir == DIRECTION_CALLED) {
        st_flags = OPTST_DEFINED;
        dir = DIRECTION_PROCESS;
    }







    if ((opts->fOptSet & OPTPROC_PRESETTING) == 0)
        st_flags = OPTST_SET;

    do {
        optst.flags = st_flags;
        ftext = SPN_WHITESPACE_CHARS(ftext);

        if (IS_VAR_FIRST_CHAR(*ftext)) {
            ftext = handle_cfg(opts, &optst, ftext, dir);

        } else switch (*ftext) {
        case '<':
            if (IS_VAR_FIRST_CHAR(ftext[1]))
                ftext = handle_struct(opts, &optst, ftext, dir);

            else switch (ftext[1]) {
            case '?':
                ftext = handle_directive(opts, ftext);
                break;

            case '!':
                ftext = handle_comment(ftext);
                break;

            case '/':
                ftext = strchr(ftext + 2, '>');
                if (ftext++ != ((void*)0))
                    break;

            default:
                ftext = ((void*)0);
            }
            if (ftext == ((void*)0))
                goto all_done;
            break;

        case '[':
            ftext = handle_section(opts, ftext);
            break;

        case '#':
            ftext = strchr(ftext + 1, NL);
            break;

        default:
            goto all_done;
        }
    } while (ftext != ((void*)0));

 all_done:
    text_munmap(&cfgfile);
    opts->fOptSet = fl_save;
}
