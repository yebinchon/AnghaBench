
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncol; int nline; } ;
struct FILE_INFO {TYPE_1__ errpos; TYPE_1__ tokpos; } ;
struct TYPE_4__ {int no_errors; scalar_t__ err_pos; scalar_t__ err_msg; } ;


 int LOG_ERR ;
 scalar_t__ MAXLINE ;
 struct FILE_INFO* lex_current () ;
 int lex_from_file () ;
 int msyslog (int ,char*,int ,int,char const*) ;
 TYPE_2__ remote_config ;
 int snprintf (scalar_t__,scalar_t__,char*,int,char const*) ;

void
yyerror(
 const char *msg
 )
{
 int retval;
 struct FILE_INFO * ip_ctx;

 ip_ctx = lex_current();
 ip_ctx->errpos = ip_ctx->tokpos;

 msyslog(LOG_ERR, "line %d column %d %s",
  ip_ctx->errpos.nline, ip_ctx->errpos.ncol, msg);
 if (!lex_from_file()) {

  retval = snprintf(remote_config.err_msg + remote_config.err_pos,
      MAXLINE - remote_config.err_pos,
      "column %d %s",
      ip_ctx->errpos.ncol, msg);


  if (retval > 0)
   remote_config.err_pos += retval;


  ++remote_config.no_errors;
 }
}
