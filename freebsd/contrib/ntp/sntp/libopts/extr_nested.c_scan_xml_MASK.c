#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nestVal; int /*<<< orphan*/  strVal; } ;
struct TYPE_7__ {int valType; TYPE_1__ v; } ;
typedef  TYPE_2__ tOptionValue ;
typedef  scalar_t__ tOptionLoadMode ;

/* Variables and functions */
 char* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 char NUL ; 
#define  OPARG_TYPE_BOOLEAN 134 
#define  OPARG_TYPE_ENUMERATION 133 
#define  OPARG_TYPE_HIERARCHY 132 
#define  OPARG_TYPE_MEMBERSHIP 131 
#define  OPARG_TYPE_NONE 130 
#define  OPARG_TYPE_NUMERIC 129 
#define  OPARG_TYPE_STRING 128 
 scalar_t__ OPTION_LOAD_KEEP ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 char* FUNC8 (char const*,size_t,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ option_load_mode ; 
 char* FUNC11 (char const*,size_t*,TYPE_2__*) ; 
 char const* FUNC12 (char const*) ; 

__attribute__((used)) static char const *
FUNC13(char const * xml_name, tOptionValue * res_val)
{
    size_t          nm_len, v_len;
    char const *    scan;
    char const *    val_str;
    tOptionValue    valu;
    tOptionLoadMode save_mode = option_load_mode;

    if (! FUNC2(*++xml_name))
        return FUNC12(xml_name);

    /*
     * "scan_xml_name()" may change "option_load_mode".
     */
    val_str = FUNC11(xml_name, &nm_len, &valu);
    if (val_str == NULL)
        goto bail_scan_xml;

    if (valu.valType == OPARG_TYPE_NONE)
        scan = val_str;
    else {
        if (option_load_mode != OPTION_LOAD_KEEP)
            val_str = FUNC3(val_str);
        scan = FUNC8(xml_name, nm_len, val_str, &v_len);
        if (scan == NULL)
            goto bail_scan_xml;
    }

    /*
     * "scan" now points to where the scan is to resume after returning.
     * It either points after "/>" at the end of the XML element header,
     * or it points after the "</name>" tail based on the name in the header.
     */

    switch (valu.valType) {
    case OPARG_TYPE_NONE:
        FUNC7(&(res_val->v.nestVal), xml_name, nm_len, NULL, 0);
        break;

    case OPARG_TYPE_STRING:
    {
        tOptionValue * new_val = FUNC7(
            &(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);

        if (option_load_mode != OPTION_LOAD_KEEP)
            FUNC10(new_val->v.strVal, option_load_mode);

        break;
    }

    case OPARG_TYPE_BOOLEAN:
        FUNC4(&(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);
        break;

    case OPARG_TYPE_NUMERIC:
        FUNC6(&(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);
        break;

    case OPARG_TYPE_HIERARCHY:
    {
        char * pz = FUNC0(v_len+1, "h scan");
        FUNC9(pz, val_str, v_len);
        pz[v_len] = NUL;
        FUNC5(&(res_val->v.nestVal), xml_name, nm_len, pz, v_len);
        FUNC1(pz);
        break;
    }

    case OPARG_TYPE_ENUMERATION:
    case OPARG_TYPE_MEMBERSHIP:
    default:
        break;
    }

    option_load_mode = save_mode;
    return scan;

bail_scan_xml:
    option_load_mode = save_mode;
    return NULL;
}