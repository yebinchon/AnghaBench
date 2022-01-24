#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_5__ {int cMode; char* rowSeparator; char* nullValue; int* colWidth; int showHeader; int* actualWidth; size_t iIndent; size_t nIndent; char* colSeparator; char* zDestTable; int /*<<< orphan*/  out; int /*<<< orphan*/  cnt; int /*<<< orphan*/  pStmt; int /*<<< orphan*/ * aiIndent; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
#define  MODE_Ascii 140 
#define  MODE_Column 139 
#define  MODE_Csv 138 
#define  MODE_EQP 137 
#define  MODE_Explain 136 
#define  MODE_Html 135 
#define  MODE_Insert 134 
#define  MODE_Line 133 
#define  MODE_List 132 
#define  MODE_Pretty 131 
#define  MODE_Quote 130 
#define  MODE_Semi 129 
#define  MODE_Tcl 128 
 char* SEP_Row ; 
 int /*<<< orphan*/  SHFLG_Newlines ; 
 int SQLITE_BLOB ; 
 int SQLITE_FLOAT ; 
 int SQLITE_INTEGER ; 
 int SQLITE_NULL ; 
 int SQLITE_TEXT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,double*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 void* FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int) ; 
 double FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 char* FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int,char*,char*,double) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC27 (char*) ; 
 int FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(
  void *pArg,
  int nArg,        /* Number of result columns */
  char **azArg,    /* Text of each result column */
  char **azCol,    /* Column names */
  int *aiType      /* Column types */
){
  int i;
  ShellState *p = (ShellState*)pArg;

  if( azArg==0 ) return 0;
  switch( p->cMode ){
    case MODE_Line: {
      int w = 5;
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        int len = FUNC27(azCol[i] ? azCol[i] : "");
        if( len>w ) w = len;
      }
      if( p->cnt++>0 ) FUNC29(p->out, "%s", p->rowSeparator);
      for(i=0; i<nArg; i++){
        FUNC29(p->out,"%*s = %s%s", w, azCol[i],
                azArg[i] ? azArg[i] : p->nullValue, p->rowSeparator);
      }
      break;
    }
    case MODE_Explain:
    case MODE_Column: {
      static const int aExplainWidths[] = {4, 13, 4, 4, 4, 13, 2, 13};
      const int *colWidth;
      int showHdr;
      char *rowSep;
      if( p->cMode==MODE_Column ){
        colWidth = p->colWidth;
        showHdr = p->showHeader;
        rowSep = p->rowSeparator;
      }else{
        colWidth = aExplainWidths;
        showHdr = 1;
        rowSep = SEP_Row;
      }
      if( p->cnt++==0 ){
        for(i=0; i<nArg; i++){
          int w, n;
          if( i<FUNC0(p->colWidth) ){
            w = colWidth[i];
          }else{
            w = 0;
          }
          if( w==0 ){
            w = FUNC28(azCol[i] ? azCol[i] : "");
            if( w<10 ) w = 10;
            n = FUNC28(azArg && azArg[i] ? azArg[i] : p->nullValue);
            if( w<n ) w = n;
          }
          if( i<FUNC0(p->actualWidth) ){
            p->actualWidth[i] = w;
          }
          if( showHdr ){
            FUNC30(p->out, w, azCol[i]);
            FUNC29(p->out, "%s", i==nArg-1 ? rowSep : "  ");
          }
        }
        if( showHdr ){
          for(i=0; i<nArg; i++){
            int w;
            if( i<FUNC0(p->actualWidth) ){
               w = p->actualWidth[i];
               if( w<0 ) w = -w;
            }else{
               w = 10;
            }
            FUNC29(p->out,"%-*.*s%s",w,w,
                   "----------------------------------------------------------"
                   "----------------------------------------------------------",
                    i==nArg-1 ? rowSep : "  ");
          }
        }
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        int w;
        if( i<FUNC0(p->actualWidth) ){
           w = p->actualWidth[i];
        }else{
           w = 10;
        }
        if( p->cMode==MODE_Explain && azArg[i] && FUNC28(azArg[i])>w ){
          w = FUNC28(azArg[i]);
        }
        if( i==1 && p->aiIndent && p->pStmt ){
          if( p->iIndent<p->nIndent ){
            FUNC29(p->out, "%*.s", p->aiIndent[p->iIndent], "");
          }
          p->iIndent++;
        }
        FUNC30(p->out, w, azArg[i] ? azArg[i] : p->nullValue);
        FUNC29(p->out, "%s", i==nArg-1 ? rowSep : "  ");
      }
      break;
    }
    case MODE_Semi: {   /* .schema and .fullschema output */
      FUNC14(p->out, azArg[0], ";\n");
      break;
    }
    case MODE_Pretty: {  /* .schema and .fullschema with --indent */
      char *z;
      int j;
      int nParen = 0;
      char cEnd = 0;
      char c;
      int nLine = 0;
      FUNC3( nArg==1 );
      if( azArg[0]==0 ) break;
      if( FUNC26("CREATE VIEW%", azArg[0], 0)==0
       || FUNC26("CREATE TRIG%", azArg[0], 0)==0
      ){
        FUNC29(p->out, "%s;\n", azArg[0]);
        break;
      }
      z = FUNC24("%s", azArg[0]);
      j = 0;
      for(i=0; FUNC1(z[i]); i++){}
      for(; (c = z[i])!=0; i++){
        if( FUNC1(c) ){
          if( z[j-1]=='\r' ) z[j-1] = '\n';
          if( FUNC1(z[j-1]) || z[j-1]=='(' ) continue;
        }else if( (c=='(' || c==')') && j>0 && FUNC1(z[j-1]) ){
          j--;
        }
        z[j++] = c;
      }
      while( j>0 && FUNC1(z[j-1]) ){ j--; }
      z[j] = 0;
      if( FUNC27(z)>=79 ){
        for(i=j=0; (c = z[i])!=0; i++){ /* Copy from z[i] back to z[j] */
          if( c==cEnd ){
            cEnd = 0;
          }else if( c=='"' || c=='\'' || c=='`' ){
            cEnd = c;
          }else if( c=='[' ){
            cEnd = ']';
          }else if( c=='-' && z[i+1]=='-' ){
            cEnd = '\n';
          }else if( c=='(' ){
            nParen++;
          }else if( c==')' ){
            nParen--;
            if( nLine>0 && nParen==0 && j>0 ){
              FUNC15(p->out, z, j, "\n");
              j = 0;
            }
          }
          z[j++] = c;
          if( nParen==1 && cEnd==0
           && (c=='(' || c=='\n' || (c==',' && !FUNC31(z+i+1)))
          ){
            if( c=='\n' ) j--;
            FUNC15(p->out, z, j, "\n  ");
            j = 0;
            nLine++;
            while( FUNC1(z[i+1]) ){ i++; }
          }
        }
        z[j] = 0;
      }
      FUNC14(p->out, z, ";\n");
      FUNC23(z);
      break;
    }
    case MODE_List: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          FUNC29(p->out,"%s%s",azCol[i],
                  i==nArg-1 ? p->rowSeparator : p->colSeparator);
        }
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        char *z = azArg[i];
        if( z==0 ) z = p->nullValue;
        FUNC29(p->out, "%s", z);
        if( i<nArg-1 ){
          FUNC29(p->out, "%s", p->colSeparator);
        }else{
          FUNC29(p->out, "%s", p->rowSeparator);
        }
      }
      break;
    }
    case MODE_Html: {
      if( p->cnt++==0 && p->showHeader ){
        FUNC17(p->out,"<TR>");
        for(i=0; i<nArg; i++){
          FUNC17(p->out,"<TH>");
          FUNC11(p->out, azCol[i]);
          FUNC17(p->out,"</TH>\n");
        }
        FUNC17(p->out,"</TR>\n");
      }
      if( azArg==0 ) break;
      FUNC17(p->out,"<TR>");
      for(i=0; i<nArg; i++){
        FUNC17(p->out,"<TD>");
        FUNC11(p->out, azArg[i] ? azArg[i] : p->nullValue);
        FUNC17(p->out,"</TD>\n");
      }
      FUNC17(p->out,"</TR>\n");
      break;
    }
    case MODE_Tcl: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          FUNC8(p->out,azCol[i] ? azCol[i] : "");
          if(i<nArg-1) FUNC29(p->out, "%s", p->colSeparator);
        }
        FUNC29(p->out, "%s", p->rowSeparator);
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        FUNC8(p->out, azArg[i] ? azArg[i] : p->nullValue);
        if(i<nArg-1) FUNC29(p->out, "%s", p->colSeparator);
      }
      FUNC29(p->out, "%s", p->rowSeparator);
      break;
    }
    case MODE_Csv: {
      FUNC18(p->out, 1);
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          FUNC9(p, azCol[i] ? azCol[i] : "", i<nArg-1);
        }
        FUNC29(p->out, "%s", p->rowSeparator);
      }
      if( nArg>0 ){
        for(i=0; i<nArg; i++){
          FUNC9(p, azArg[i], i<nArg-1);
        }
        FUNC29(p->out, "%s", p->rowSeparator);
      }
      FUNC19(p->out, 1);
      break;
    }
    case MODE_Insert: {
      if( azArg==0 ) break;
      FUNC29(p->out,"INSERT INTO %s",p->zDestTable);
      if( p->showHeader ){
        FUNC17(p->out,"(");
        for(i=0; i<nArg; i++){
          if( i>0 ) FUNC17(p->out, ",");
          if( FUNC16(azCol[i]) ){
            char *z = FUNC24("\"%w\"", azCol[i]);
            FUNC29(p->out, "%s", z);
            FUNC23(z);
          }else{
            FUNC17(p->out, "%s", azCol[i]);
          }
        }
        FUNC17(p->out,")");
      }
      p->cnt++;
      for(i=0; i<nArg; i++){
        FUNC17(p->out, i>0 ? "," : " VALUES(");
        if( (azArg[i]==0) || (aiType && aiType[i]==SQLITE_NULL) ){
          FUNC29(p->out,"NULL");
        }else if( aiType && aiType[i]==SQLITE_TEXT ){
          if( FUNC2(p, SHFLG_Newlines) ){
            FUNC13(p->out, azArg[i]);
          }else{
            FUNC12(p->out, azArg[i]);
          }
        }else if( aiType && aiType[i]==SQLITE_INTEGER ){
          FUNC29(p->out,"%s", azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_FLOAT ){
          char z[50];
          double r = FUNC22(p->pStmt, i);
          sqlite3_uint64 ur;
          FUNC7(&ur,&r,sizeof(r));
          if( ur==0x7ff0000000000000LL ){
            FUNC17(p->out, "1e999");
          }else if( ur==0xfff0000000000000LL ){
            FUNC17(p->out, "-1e999");
          }else{
            FUNC25(50,z,"%!.20g", r);
            FUNC17(p->out, "%s", z);
          }
        }else if( aiType && aiType[i]==SQLITE_BLOB && p->pStmt ){
          const void *pBlob = FUNC20(p->pStmt, i);
          int nBlob = FUNC21(p->pStmt, i);
          FUNC10(p->out, pBlob, nBlob);
        }else if( FUNC6(azArg[i], 0) ){
          FUNC29(p->out,"%s", azArg[i]);
        }else if( FUNC2(p, SHFLG_Newlines) ){
          FUNC13(p->out, azArg[i]);
        }else{
          FUNC12(p->out, azArg[i]);
        }
      }
      FUNC17(p->out,");\n");
      break;
    }
    case MODE_Quote: {
      if( azArg==0 ) break;
      if( p->cnt==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          if( i>0 ) FUNC17(p->out, ",");
          FUNC13(p->out, azCol[i]);
        }
        FUNC17(p->out,"\n");
      }
      p->cnt++;
      for(i=0; i<nArg; i++){
        if( i>0 ) FUNC17(p->out, ",");
        if( (azArg[i]==0) || (aiType && aiType[i]==SQLITE_NULL) ){
          FUNC29(p->out,"NULL");
        }else if( aiType && aiType[i]==SQLITE_TEXT ){
          FUNC13(p->out, azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_INTEGER ){
          FUNC29(p->out,"%s", azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_FLOAT ){
          char z[50];
          double r = FUNC22(p->pStmt, i);
          FUNC25(50,z,"%!.20g", r);
          FUNC17(p->out, "%s", z);
        }else if( aiType && aiType[i]==SQLITE_BLOB && p->pStmt ){
          const void *pBlob = FUNC20(p->pStmt, i);
          int nBlob = FUNC21(p->pStmt, i);
          FUNC10(p->out, pBlob, nBlob);
        }else if( FUNC6(azArg[i], 0) ){
          FUNC29(p->out,"%s", azArg[i]);
        }else{
          FUNC13(p->out, azArg[i]);
        }
      }
      FUNC17(p->out,"\n");
      break;
    }
    case MODE_Ascii: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          if( i>0 ) FUNC29(p->out, "%s", p->colSeparator);
          FUNC29(p->out,"%s",azCol[i] ? azCol[i] : "");
        }
        FUNC29(p->out, "%s", p->rowSeparator);
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        if( i>0 ) FUNC29(p->out, "%s", p->colSeparator);
        FUNC29(p->out,"%s",azArg[i] ? azArg[i] : p->nullValue);
      }
      FUNC29(p->out, "%s", p->rowSeparator);
      break;
    }
    case MODE_EQP: {
      FUNC5(p, FUNC4(azArg[0]), FUNC4(azArg[1]), azArg[3]);
      break;
    }
  }
  return 0;
}