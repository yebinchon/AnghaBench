
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; scalar_t__ len; } ;


 scalar_t__ Cursor ;
 scalar_t__ F_DOWN_SEARCH_HIST ;
 scalar_t__ F_UP_SEARCH_HIST ;
 int Hist_num ;
 scalar_t__ InputBuf ;
 scalar_t__ LastChar ;
 scalar_t__ LastCmd ;
 int Strbuf_appendn (TYPE_1__*,scalar_t__,scalar_t__) ;
 int Strbuf_terminate (TYPE_1__*) ;
 TYPE_1__ patbuf ;
 int xprintf (char*,int,...) ;

__attribute__((used)) static void
c_hsetpat(void)
{
    if (LastCmd != F_UP_SEARCH_HIST && LastCmd != F_DOWN_SEARCH_HIST) {
 patbuf.len = 0;
 Strbuf_appendn(&patbuf, InputBuf, Cursor - InputBuf);
 Strbuf_terminate(&patbuf);
    }






}
