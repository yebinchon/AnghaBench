
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;


 void* CursSaved ;
 void* Cursor ;
 int HistSaved ;
 int Hist_num ;
 void* InputBuf ;
 void* LastChar ;
 void* LastSaved ;
 int RestoreSaved ;
 TYPE_1__ SavedBuf ;
 int Strbuf_append (TYPE_1__*,void*) ;
 int Strbuf_terminate (TYPE_1__*) ;

__attribute__((used)) static void
c_save_inputbuf(void)
{
    SavedBuf.len = 0;
    Strbuf_append(&SavedBuf, InputBuf);
    Strbuf_terminate(&SavedBuf);
    LastSaved = LastChar - InputBuf;
    CursSaved = Cursor - InputBuf;
    HistSaved = Hist_num;
    RestoreSaved = 1;
}
