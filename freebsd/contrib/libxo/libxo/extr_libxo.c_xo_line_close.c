
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;
typedef int div_close ;


 int XOF_ISSET (int *,int ) ;
 int XOF_PRETTY ;
 int XOIF_CLEAR (int *,int ) ;
 int XOIF_DIV_OPEN ;
 int XOIF_ISSET (int *,int ) ;


 int xo_data_append (int *,char*,int) ;
 int xo_line_ensure_open (int *,int ) ;
 int xo_style (int *) ;

__attribute__((used)) static void
xo_line_close (xo_handle_t *xop)
{
    static char div_close[] = "</div>";

    switch (xo_style(xop)) {
    case 129:
 if (!XOIF_ISSET(xop, XOIF_DIV_OPEN))
     xo_line_ensure_open(xop, 0);

 XOIF_CLEAR(xop, XOIF_DIV_OPEN);
 xo_data_append(xop, div_close, sizeof(div_close) - 1);

 if (XOF_ISSET(xop, XOF_PRETTY))
     xo_data_append(xop, "\n", 1);
 break;

    case 128:
 xo_data_append(xop, "\n", 1);
 break;
    }
}
