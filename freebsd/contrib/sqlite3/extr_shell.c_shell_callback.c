
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
typedef int r ;
struct TYPE_5__ {int cMode; char* rowSeparator; char* nullValue; int* colWidth; int showHeader; int* actualWidth; size_t iIndent; size_t nIndent; char* colSeparator; char* zDestTable; int out; int cnt; int pStmt; int * aiIndent; } ;
typedef TYPE_1__ ShellState ;


 int ArraySize (int*) ;
 int IsSpace (char) ;
 char* SEP_Row ;
 int SHFLG_Newlines ;
 int SQLITE_BLOB ;
 int SQLITE_FLOAT ;
 int SQLITE_INTEGER ;
 int SQLITE_NULL ;
 int SQLITE_TEXT ;
 int ShellHasFlag (TYPE_1__*,int ) ;
 int assert (int) ;
 int atoi (char*) ;
 int eqp_append (TYPE_1__*,int ,int ,char*) ;
 int isNumber (char*,int ) ;
 int memcpy (int*,double*,int) ;
 int output_c_string (int ,char*) ;
 int output_csv (TYPE_1__*,char*,int) ;
 int output_hex_blob (int ,void const*,int) ;
 int output_html_string (int ,char*) ;
 int output_quoted_escaped_string (int ,char*) ;
 int output_quoted_string (int ,char*) ;
 int printSchemaLine (int ,char*,char*) ;
 int printSchemaLineN (int ,char*,int,char*) ;
 int quoteChar (char*) ;
 int raw_printf (int ,char*,...) ;
 int setBinaryMode (int ,int) ;
 int setTextMode (int ,int) ;
 void* sqlite3_column_blob (int ,int) ;
 int sqlite3_column_bytes (int ,int) ;
 double sqlite3_column_double (int ,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int sqlite3_snprintf (int,char*,char*,double) ;
 int sqlite3_strlike (char*,char*,int ) ;
 int strlen30 (char*) ;
 int strlenChar (char*) ;
 int utf8_printf (int ,char*,...) ;
 int utf8_width_print (int ,int,char*) ;
 int wsToEol (int ) ;

__attribute__((used)) static int shell_callback(
  void *pArg,
  int nArg,
  char **azArg,
  char **azCol,
  int *aiType
){
  int i;
  ShellState *p = (ShellState*)pArg;

  if( azArg==0 ) return 0;
  switch( p->cMode ){
    case 133: {
      int w = 5;
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        int len = strlen30(azCol[i] ? azCol[i] : "");
        if( len>w ) w = len;
      }
      if( p->cnt++>0 ) utf8_printf(p->out, "%s", p->rowSeparator);
      for(i=0; i<nArg; i++){
        utf8_printf(p->out,"%*s = %s%s", w, azCol[i],
                azArg[i] ? azArg[i] : p->nullValue, p->rowSeparator);
      }
      break;
    }
    case 136:
    case 139: {
      static const int aExplainWidths[] = {4, 13, 4, 4, 4, 13, 2, 13};
      const int *colWidth;
      int showHdr;
      char *rowSep;
      if( p->cMode==139 ){
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
          if( i<ArraySize(p->colWidth) ){
            w = colWidth[i];
          }else{
            w = 0;
          }
          if( w==0 ){
            w = strlenChar(azCol[i] ? azCol[i] : "");
            if( w<10 ) w = 10;
            n = strlenChar(azArg && azArg[i] ? azArg[i] : p->nullValue);
            if( w<n ) w = n;
          }
          if( i<ArraySize(p->actualWidth) ){
            p->actualWidth[i] = w;
          }
          if( showHdr ){
            utf8_width_print(p->out, w, azCol[i]);
            utf8_printf(p->out, "%s", i==nArg-1 ? rowSep : "  ");
          }
        }
        if( showHdr ){
          for(i=0; i<nArg; i++){
            int w;
            if( i<ArraySize(p->actualWidth) ){
               w = p->actualWidth[i];
               if( w<0 ) w = -w;
            }else{
               w = 10;
            }
            utf8_printf(p->out,"%-*.*s%s",w,w,
                   "----------------------------------------------------------"
                   "----------------------------------------------------------",
                    i==nArg-1 ? rowSep : "  ");
          }
        }
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        int w;
        if( i<ArraySize(p->actualWidth) ){
           w = p->actualWidth[i];
        }else{
           w = 10;
        }
        if( p->cMode==136 && azArg[i] && strlenChar(azArg[i])>w ){
          w = strlenChar(azArg[i]);
        }
        if( i==1 && p->aiIndent && p->pStmt ){
          if( p->iIndent<p->nIndent ){
            utf8_printf(p->out, "%*.s", p->aiIndent[p->iIndent], "");
          }
          p->iIndent++;
        }
        utf8_width_print(p->out, w, azArg[i] ? azArg[i] : p->nullValue);
        utf8_printf(p->out, "%s", i==nArg-1 ? rowSep : "  ");
      }
      break;
    }
    case 129: {
      printSchemaLine(p->out, azArg[0], ";\n");
      break;
    }
    case 131: {
      char *z;
      int j;
      int nParen = 0;
      char cEnd = 0;
      char c;
      int nLine = 0;
      assert( nArg==1 );
      if( azArg[0]==0 ) break;
      if( sqlite3_strlike("CREATE VIEW%", azArg[0], 0)==0
       || sqlite3_strlike("CREATE TRIG%", azArg[0], 0)==0
      ){
        utf8_printf(p->out, "%s;\n", azArg[0]);
        break;
      }
      z = sqlite3_mprintf("%s", azArg[0]);
      j = 0;
      for(i=0; IsSpace(z[i]); i++){}
      for(; (c = z[i])!=0; i++){
        if( IsSpace(c) ){
          if( z[j-1]=='\r' ) z[j-1] = '\n';
          if( IsSpace(z[j-1]) || z[j-1]=='(' ) continue;
        }else if( (c=='(' || c==')') && j>0 && IsSpace(z[j-1]) ){
          j--;
        }
        z[j++] = c;
      }
      while( j>0 && IsSpace(z[j-1]) ){ j--; }
      z[j] = 0;
      if( strlen30(z)>=79 ){
        for(i=j=0; (c = z[i])!=0; i++){
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
              printSchemaLineN(p->out, z, j, "\n");
              j = 0;
            }
          }
          z[j++] = c;
          if( nParen==1 && cEnd==0
           && (c=='(' || c=='\n' || (c==',' && !wsToEol(z+i+1)))
          ){
            if( c=='\n' ) j--;
            printSchemaLineN(p->out, z, j, "\n  ");
            j = 0;
            nLine++;
            while( IsSpace(z[i+1]) ){ i++; }
          }
        }
        z[j] = 0;
      }
      printSchemaLine(p->out, z, ";\n");
      sqlite3_free(z);
      break;
    }
    case 132: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          utf8_printf(p->out,"%s%s",azCol[i],
                  i==nArg-1 ? p->rowSeparator : p->colSeparator);
        }
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        char *z = azArg[i];
        if( z==0 ) z = p->nullValue;
        utf8_printf(p->out, "%s", z);
        if( i<nArg-1 ){
          utf8_printf(p->out, "%s", p->colSeparator);
        }else{
          utf8_printf(p->out, "%s", p->rowSeparator);
        }
      }
      break;
    }
    case 135: {
      if( p->cnt++==0 && p->showHeader ){
        raw_printf(p->out,"<TR>");
        for(i=0; i<nArg; i++){
          raw_printf(p->out,"<TH>");
          output_html_string(p->out, azCol[i]);
          raw_printf(p->out,"</TH>\n");
        }
        raw_printf(p->out,"</TR>\n");
      }
      if( azArg==0 ) break;
      raw_printf(p->out,"<TR>");
      for(i=0; i<nArg; i++){
        raw_printf(p->out,"<TD>");
        output_html_string(p->out, azArg[i] ? azArg[i] : p->nullValue);
        raw_printf(p->out,"</TD>\n");
      }
      raw_printf(p->out,"</TR>\n");
      break;
    }
    case 128: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          output_c_string(p->out,azCol[i] ? azCol[i] : "");
          if(i<nArg-1) utf8_printf(p->out, "%s", p->colSeparator);
        }
        utf8_printf(p->out, "%s", p->rowSeparator);
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        output_c_string(p->out, azArg[i] ? azArg[i] : p->nullValue);
        if(i<nArg-1) utf8_printf(p->out, "%s", p->colSeparator);
      }
      utf8_printf(p->out, "%s", p->rowSeparator);
      break;
    }
    case 138: {
      setBinaryMode(p->out, 1);
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          output_csv(p, azCol[i] ? azCol[i] : "", i<nArg-1);
        }
        utf8_printf(p->out, "%s", p->rowSeparator);
      }
      if( nArg>0 ){
        for(i=0; i<nArg; i++){
          output_csv(p, azArg[i], i<nArg-1);
        }
        utf8_printf(p->out, "%s", p->rowSeparator);
      }
      setTextMode(p->out, 1);
      break;
    }
    case 134: {
      if( azArg==0 ) break;
      utf8_printf(p->out,"INSERT INTO %s",p->zDestTable);
      if( p->showHeader ){
        raw_printf(p->out,"(");
        for(i=0; i<nArg; i++){
          if( i>0 ) raw_printf(p->out, ",");
          if( quoteChar(azCol[i]) ){
            char *z = sqlite3_mprintf("\"%w\"", azCol[i]);
            utf8_printf(p->out, "%s", z);
            sqlite3_free(z);
          }else{
            raw_printf(p->out, "%s", azCol[i]);
          }
        }
        raw_printf(p->out,")");
      }
      p->cnt++;
      for(i=0; i<nArg; i++){
        raw_printf(p->out, i>0 ? "," : " VALUES(");
        if( (azArg[i]==0) || (aiType && aiType[i]==SQLITE_NULL) ){
          utf8_printf(p->out,"NULL");
        }else if( aiType && aiType[i]==SQLITE_TEXT ){
          if( ShellHasFlag(p, SHFLG_Newlines) ){
            output_quoted_string(p->out, azArg[i]);
          }else{
            output_quoted_escaped_string(p->out, azArg[i]);
          }
        }else if( aiType && aiType[i]==SQLITE_INTEGER ){
          utf8_printf(p->out,"%s", azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_FLOAT ){
          char z[50];
          double r = sqlite3_column_double(p->pStmt, i);
          sqlite3_uint64 ur;
          memcpy(&ur,&r,sizeof(r));
          if( ur==0x7ff0000000000000LL ){
            raw_printf(p->out, "1e999");
          }else if( ur==0xfff0000000000000LL ){
            raw_printf(p->out, "-1e999");
          }else{
            sqlite3_snprintf(50,z,"%!.20g", r);
            raw_printf(p->out, "%s", z);
          }
        }else if( aiType && aiType[i]==SQLITE_BLOB && p->pStmt ){
          const void *pBlob = sqlite3_column_blob(p->pStmt, i);
          int nBlob = sqlite3_column_bytes(p->pStmt, i);
          output_hex_blob(p->out, pBlob, nBlob);
        }else if( isNumber(azArg[i], 0) ){
          utf8_printf(p->out,"%s", azArg[i]);
        }else if( ShellHasFlag(p, SHFLG_Newlines) ){
          output_quoted_string(p->out, azArg[i]);
        }else{
          output_quoted_escaped_string(p->out, azArg[i]);
        }
      }
      raw_printf(p->out,");\n");
      break;
    }
    case 130: {
      if( azArg==0 ) break;
      if( p->cnt==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          if( i>0 ) raw_printf(p->out, ",");
          output_quoted_string(p->out, azCol[i]);
        }
        raw_printf(p->out,"\n");
      }
      p->cnt++;
      for(i=0; i<nArg; i++){
        if( i>0 ) raw_printf(p->out, ",");
        if( (azArg[i]==0) || (aiType && aiType[i]==SQLITE_NULL) ){
          utf8_printf(p->out,"NULL");
        }else if( aiType && aiType[i]==SQLITE_TEXT ){
          output_quoted_string(p->out, azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_INTEGER ){
          utf8_printf(p->out,"%s", azArg[i]);
        }else if( aiType && aiType[i]==SQLITE_FLOAT ){
          char z[50];
          double r = sqlite3_column_double(p->pStmt, i);
          sqlite3_snprintf(50,z,"%!.20g", r);
          raw_printf(p->out, "%s", z);
        }else if( aiType && aiType[i]==SQLITE_BLOB && p->pStmt ){
          const void *pBlob = sqlite3_column_blob(p->pStmt, i);
          int nBlob = sqlite3_column_bytes(p->pStmt, i);
          output_hex_blob(p->out, pBlob, nBlob);
        }else if( isNumber(azArg[i], 0) ){
          utf8_printf(p->out,"%s", azArg[i]);
        }else{
          output_quoted_string(p->out, azArg[i]);
        }
      }
      raw_printf(p->out,"\n");
      break;
    }
    case 140: {
      if( p->cnt++==0 && p->showHeader ){
        for(i=0; i<nArg; i++){
          if( i>0 ) utf8_printf(p->out, "%s", p->colSeparator);
          utf8_printf(p->out,"%s",azCol[i] ? azCol[i] : "");
        }
        utf8_printf(p->out, "%s", p->rowSeparator);
      }
      if( azArg==0 ) break;
      for(i=0; i<nArg; i++){
        if( i>0 ) utf8_printf(p->out, "%s", p->colSeparator);
        utf8_printf(p->out,"%s",azArg[i] ? azArg[i] : p->nullValue);
      }
      utf8_printf(p->out, "%s", p->rowSeparator);
      break;
    }
    case 137: {
      eqp_append(p, atoi(azArg[0]), atoi(azArg[1]), azArg[3]);
      break;
    }
  }
  return 0;
}
