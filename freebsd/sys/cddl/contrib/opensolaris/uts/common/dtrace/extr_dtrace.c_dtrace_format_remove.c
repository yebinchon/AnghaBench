
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {char** dts_formats; int dts_nformats; } ;
typedef TYPE_1__ dtrace_state_t ;


 int ASSERT (int) ;
 int kmem_free (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
dtrace_format_remove(dtrace_state_t *state, uint16_t format)
{
 char *fmt;

 ASSERT(state->dts_formats != ((void*)0));
 ASSERT(format <= state->dts_nformats);
 ASSERT(state->dts_formats[format - 1] != ((void*)0));

 fmt = state->dts_formats[format - 1];
 kmem_free(fmt, strlen(fmt) + 1);
 state->dts_formats[format - 1] = ((void*)0);
}
