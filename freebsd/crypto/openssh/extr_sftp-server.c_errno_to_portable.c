
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH2_FX_BAD_MESSAGE ;
 int SSH2_FX_FAILURE ;
 int SSH2_FX_NO_SUCH_FILE ;
 int SSH2_FX_OK ;
 int SSH2_FX_OP_UNSUPPORTED ;
 int SSH2_FX_PERMISSION_DENIED ;

__attribute__((used)) static int
errno_to_portable(int unixerrno)
{
 int ret = 0;

 switch (unixerrno) {
 case 0:
  ret = SSH2_FX_OK;
  break;
 case 131:
 case 129:
 case 136:
 case 133:
  ret = SSH2_FX_NO_SUCH_FILE;
  break;
 case 128:
 case 137:
 case 135:
  ret = SSH2_FX_PERMISSION_DENIED;
  break;
 case 132:
 case 134:
  ret = SSH2_FX_BAD_MESSAGE;
  break;
 case 130:
  ret = SSH2_FX_OP_UNSUPPORTED;
  break;
 default:
  ret = SSH2_FX_FAILURE;
  break;
 }
 return ret;
}
