
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int associd_t ;
 char* currenthost ;
 int fprintf (int ,char*,...) ;
 int numhosts ;
 int stderr ;

void
show_error_msg(
 int m6resp,
 associd_t associd
 )
{
 if (numhosts > 1)
  fprintf(stderr, "server=%s ", currenthost);

 switch (m6resp) {

 case 136:
  fprintf(stderr,
      "***Server reports a bad format request packet\n");
  break;

 case 133:
  fprintf(stderr,
      "***Server disallowed request (authentication?)\n");
  break;

 case 135:
  fprintf(stderr,
      "***Server reports a bad opcode in request\n");
  break;

 case 137:
  fprintf(stderr,
      "***Association ID %d unknown to server\n",
      associd);
  break;

 case 132:
  fprintf(stderr,
      "***A request variable unknown to the server\n");
  break;

 case 134:
  fprintf(stderr,
      "***Server indicates a request variable was bad\n");
  break;

 case 128:
  fprintf(stderr,
      "***Server returned an unspecified error\n");
  break;

 case 130:
  fprintf(stderr, "***Request timed out\n");
  break;

 case 131:
  fprintf(stderr,
      "***Response from server was incomplete\n");
  break;

 case 129:
  fprintf(stderr,
      "***Buffer size exceeded for returned data\n");
  break;

 default:
  fprintf(stderr,
      "***Server returns unknown error code %d\n",
      m6resp);
 }
}
