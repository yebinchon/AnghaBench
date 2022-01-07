; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_sv_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_sv_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i64 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"server buffer\00", align 1
@s_nbio = common dso_local global i64 0, align 8
@bio_err = common dso_local global i64 0, align 8
@s_quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Turned on non blocking io\0A\00", align 1
@ctx = common dso_local global i32 0, align 4
@s_tlsextdebug = common dso_local global i64 0, align 8
@tlsext_cb = common dso_local global i32 0, align 4
@bio_s_out = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Error setting session id context\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error clearing SSL connection\0A\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@enable_timeouts = common dso_local global i64 0, align 8
@DGRAM_RCV_TIMEOUT = common dso_local global i64 0, align 8
@BIO_CTRL_DGRAM_SET_RECV_TIMEOUT = common dso_local global i32 0, align 4
@DGRAM_SND_TIMEOUT = common dso_local global i64 0, align 8
@BIO_CTRL_DGRAM_SET_SEND_TIMEOUT = common dso_local global i32 0, align 4
@socket_mtu = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"MTU too small. Must be at least %ld\0A\00", align 1
@SSL_OP_NO_QUERY_MTU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Failed to set MTU\0A\00", align 1
@BIO_CTRL_DGRAM_MTU_DISCOVER = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Unable to create BIO\0A\00", align 1
@s_nbio_test = common dso_local global i64 0, align 8
@s_debug = common dso_local global i64 0, align 8
@bio_dump_callback = common dso_local global i32 0, align 4
@s_msg = common dso_local global i32 0, align 4
@SSL_trace = common dso_local global i32 0, align 4
@msg_cb = common dso_local global i32 0, align 4
@bio_s_msg = common dso_local global i64 0, align 8
@early_data = common dso_local global i64 0, align 8
@SSL_READ_EARLY_DATA_ERROR = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Error reading early data\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Early data received:\0A\00", align 1
@SSL_EARLY_DATA_NOT_SENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"No early data received\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Early data was rejected\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\0AEnd of early data\0A\00", align 1
@async = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"TIMEOUT occurred\0A\00", align 1
@s_crlf = common dso_local global i64 0, align 8
@s_brief = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@DTLS1_VERSION = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"HEARTBEATING\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SSL_do_handshake -> %d\0A\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_CLIENT_ONCE = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NOT_REQUESTED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"Failed to initiate request\0A\00", align 1
@sv_body.str = internal global i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"Lets print some clear text\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"LOOKUP renego during write\0A\00", align 1
@srp_callback_parm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"LOOKUP done %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"LOOKUP not successful\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Write BLOCK (Async)\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Write BLOCK\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"LOOKUP renego during read\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Read BLOCK (Async)\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Read BLOCK\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"shutting down SSL\0A\00", align 1
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"CONNECTION CLOSED\0A\00", align 1
@count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @sv_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv_body(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca %struct.timeval*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  store i32* null, i32** %16, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SOCK_DGRAM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IPPROTO_SCTP, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %4
  %37 = phi i1 [ true, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* @bufsize, align 4
  %40 = call i8* @app_malloc(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* @s_nbio, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BIO_socket_nbio(i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @bio_err, align 8
  %49 = call i32 @ERR_print_errors(i64 %48)
  br label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @s_quiet, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* @bio_err, align 8
  %55 = call i32 (i64, i8*, ...) @BIO_printf(i64 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* @ctx, align 4
  %60 = call i32* @SSL_new(i32 %59)
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -1, i32* %11, align 4
  br label %882

64:                                               ; preds = %58
  %65 = load i64, i64* @s_tlsextdebug, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* @tlsext_cb, align 4
  %70 = call i32 @SSL_set_tlsext_debug_callback(i32* %68, i32 %69)
  %71 = load i32*, i32** %16, align 8
  %72 = load i64, i64* @bio_s_out, align 8
  %73 = call i32 @SSL_set_tlsext_debug_arg(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call i32 @SSL_set_session_id_context(i32* %78, i8* %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* @bio_err, align 8
  %86 = call i32 (i64, i8*, ...) @BIO_printf(i64 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %882

87:                                               ; preds = %77, %74
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @SSL_clear(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @bio_err, align 8
  %93 = call i32 (i64, i8*, ...) @BIO_printf(i64 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %882

94:                                               ; preds = %87
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %167

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @IPPROTO_SCTP, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @BIO_NOCLOSE, align 4
  %104 = call i32* @BIO_new_dgram_sctp(i32 %102, i32 %103)
  store i32* %104, i32** %17, align 8
  br label %109

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @BIO_NOCLOSE, align 4
  %108 = call i32* @BIO_new_dgram(i32 %106, i32 %107)
  store i32* %108, i32** %17, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i64, i64* @enable_timeouts, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load i64, i64* @DGRAM_RCV_TIMEOUT, align 8
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* @BIO_CTRL_DGRAM_SET_RECV_TIMEOUT, align 4
  %118 = call i32 @BIO_ctrl(i32* %116, i32 %117, i32 0, %struct.timeval* %18)
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i64, i64* @DGRAM_SND_TIMEOUT, align 8
  %121 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* @BIO_CTRL_DGRAM_SET_SEND_TIMEOUT, align 4
  %124 = call i32 @BIO_ctrl(i32* %122, i32 %123, i32 0, %struct.timeval* %18)
  br label %125

125:                                              ; preds = %112, %109
  %126 = load i64, i64* @socket_mtu, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i64, i64* @socket_mtu, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = call i64 @DTLS_get_link_min_mtu(i32* %130)
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i64, i64* @bio_err, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = call i64 @DTLS_get_link_min_mtu(i32* %135)
  %137 = call i32 (i64, i8*, ...) @BIO_printf(i64 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %136)
  store i32 -1, i32* %11, align 4
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @BIO_free(i32* %138)
  br label %882

140:                                              ; preds = %128
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* @SSL_OP_NO_QUERY_MTU, align 4
  %143 = call i32 @SSL_set_options(i32* %141, i32 %142)
  %144 = load i32*, i32** %16, align 8
  %145 = load i64, i64* @socket_mtu, align 8
  %146 = call i32 @DTLS_set_link_mtu(i32* %144, i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %140
  %149 = load i64, i64* @bio_err, align 8
  %150 = call i32 (i64, i8*, ...) @BIO_printf(i64 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @BIO_free(i32* %151)
  br label %882

153:                                              ; preds = %140
  br label %158

154:                                              ; preds = %125
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* @BIO_CTRL_DGRAM_MTU_DISCOVER, align 4
  %157 = call i32 @BIO_ctrl(i32* %155, i32 %156, i32 0, %struct.timeval* null)
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @IPPROTO_SCTP, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %165 = call i32 @SSL_set_options(i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  br label %171

167:                                              ; preds = %94
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @BIO_NOCLOSE, align 4
  %170 = call i32* @BIO_new_socket(i32 %168, i32 %169)
  store i32* %170, i32** %17, align 8
  br label %171

171:                                              ; preds = %167, %166
  %172 = load i32*, i32** %17, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i64, i64* @bio_err, align 8
  %176 = call i32 (i64, i8*, ...) @BIO_printf(i64 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i64, i64* @bio_err, align 8
  %178 = call i32 @ERR_print_errors(i64 %177)
  br label %882

179:                                              ; preds = %171
  %180 = load i64, i64* @s_nbio_test, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = call i32 (...) @BIO_f_nbio_test()
  %184 = call i32* @BIO_new(i32 %183)
  store i32* %184, i32** %21, align 8
  %185 = load i32*, i32** %21, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = call i32* @BIO_push(i32* %185, i32* %186)
  store i32* %187, i32** %17, align 8
  br label %188

188:                                              ; preds = %182, %179
  %189 = load i32*, i32** %16, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @SSL_set_bio(i32* %189, i32* %190, i32* %191)
  %193 = load i32*, i32** %16, align 8
  %194 = call i32 @SSL_set_accept_state(i32* %193)
  %195 = load i64, i64* @s_debug, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %188
  %198 = load i32*, i32** %16, align 8
  %199 = call i32 @SSL_get_rbio(i32* %198)
  %200 = load i32, i32* @bio_dump_callback, align 4
  %201 = call i32 @BIO_set_callback(i32 %199, i32 %200)
  %202 = load i32*, i32** %16, align 8
  %203 = call i32 @SSL_get_rbio(i32* %202)
  %204 = load i64, i64* @bio_s_out, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = call i32 @BIO_set_callback_arg(i32 %203, i8* %205)
  br label %207

207:                                              ; preds = %197, %188
  %208 = load i32, i32* @s_msg, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %232

210:                                              ; preds = %207
  %211 = load i32, i32* @s_msg, align 4
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* @SSL_trace, align 4
  %216 = call i32 @SSL_set_msg_callback(i32* %214, i32 %215)
  br label %221

217:                                              ; preds = %210
  %218 = load i32*, i32** %16, align 8
  %219 = load i32, i32* @msg_cb, align 4
  %220 = call i32 @SSL_set_msg_callback(i32* %218, i32 %219)
  br label %221

221:                                              ; preds = %217, %213
  %222 = load i32*, i32** %16, align 8
  %223 = load i64, i64* @bio_s_msg, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i64, i64* @bio_s_msg, align 8
  br label %229

227:                                              ; preds = %221
  %228 = load i64, i64* @bio_s_out, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i64 [ %226, %225 ], [ %228, %227 ]
  %231 = call i32 @SSL_set_msg_callback_arg(i32* %222, i64 %230)
  br label %232

232:                                              ; preds = %229, %207
  %233 = load i64, i64* @s_tlsextdebug, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* @tlsext_cb, align 4
  %238 = call i32 @SSL_set_tlsext_debug_callback(i32* %236, i32 %237)
  %239 = load i32*, i32** %16, align 8
  %240 = load i64, i64* @bio_s_out, align 8
  %241 = call i32 @SSL_set_tlsext_debug_arg(i32* %239, i64 %240)
  br label %242

242:                                              ; preds = %235, %232
  %243 = load i64, i64* @early_data, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %313

245:                                              ; preds = %242
  store i32 1, i32* %22, align 4
  %246 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  store i32 %246, i32* %23, align 4
  br label %247

247:                                              ; preds = %286, %245
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %287

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %264, %251
  %253 = load i32*, i32** %16, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = load i32, i32* @bufsize, align 4
  %256 = call i32 @SSL_read_early_data(i32* %253, i8* %254, i32 %255, i64* %24)
  store i32 %256, i32* %23, align 4
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  br label %270

261:                                              ; preds = %252
  %262 = load i32*, i32** %16, align 8
  %263 = call i32 @SSL_get_error(i32* %262, i32 0)
  switch i32 %263, label %265 [
    i32 130, label %264
    i32 133, label %264
    i32 131, label %264
  ]

264:                                              ; preds = %261, %261, %261
  br label %252

265:                                              ; preds = %261
  %266 = load i64, i64* @bio_err, align 8
  %267 = call i32 (i64, i8*, ...) @BIO_printf(i64 %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %268 = load i64, i64* @bio_err, align 8
  %269 = call i32 @ERR_print_errors(i64 %268)
  br label %882

270:                                              ; preds = %260
  %271 = load i64, i64* %24, align 8
  %272 = icmp ugt i64 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %270
  %274 = load i32, i32* %22, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i64, i64* @bio_s_out, align 8
  %278 = call i32 (i64, i8*, ...) @BIO_printf(i64 %277, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i8*, i8** %9, align 8
  %281 = load i64, i64* %24, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @raw_write_stdout(i8* %280, i32 %282)
  %284 = load i64, i64* @bio_s_out, align 8
  %285 = call i32 @BIO_flush(i64 %284)
  br label %286

286:                                              ; preds = %279, %270
  br label %247

287:                                              ; preds = %247
  %288 = load i32, i32* %22, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %287
  %291 = load i32*, i32** %16, align 8
  %292 = call i64 @SSL_get_early_data_status(i32* %291)
  %293 = load i64, i64* @SSL_EARLY_DATA_NOT_SENT, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i64, i64* @bio_s_out, align 8
  %297 = call i32 (i64, i8*, ...) @BIO_printf(i64 %296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %301

298:                                              ; preds = %290
  %299 = load i64, i64* @bio_s_out, align 8
  %300 = call i32 (i64, i8*, ...) @BIO_printf(i64 %299, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %295
  br label %305

302:                                              ; preds = %287
  %303 = load i64, i64* @bio_s_out, align 8
  %304 = call i32 (i64, i8*, ...) @BIO_printf(i64 %303, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %301
  %306 = load i32*, i32** %16, align 8
  %307 = call i64 @SSL_is_init_finished(i32* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %305
  %310 = load i32*, i32** %16, align 8
  %311 = call i32 @print_connection_info(i32* %310)
  br label %312

312:                                              ; preds = %309, %305
  br label %313

313:                                              ; preds = %312, %242
  %314 = call i32 (...) @fileno_stdin()
  %315 = load i32, i32* %5, align 4
  %316 = icmp sgt i32 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = call i32 (...) @fileno_stdin()
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %323

320:                                              ; preds = %313
  %321 = load i32, i32* %5, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %12, align 4
  br label %323

323:                                              ; preds = %320, %317
  br label %324

324:                                              ; preds = %881, %666, %624, %577, %552, %529, %375, %323
  store i32 0, i32* %25, align 4
  %325 = load i32*, i32** %16, align 8
  %326 = call i64 @SSL_has_pending(i32* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %337, label %328

328:                                              ; preds = %324
  %329 = load i64, i64* @async, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i32*, i32** %16, align 8
  %333 = call i64 @SSL_waiting_for_async(i32* %332)
  %334 = icmp ne i64 %333, 0
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi i1 [ false, %328 ], [ %334, %331 ]
  br label %337

337:                                              ; preds = %335, %324
  %338 = phi i1 [ true, %324 ], [ %336, %335 ]
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %26, align 4
  %340 = load i32, i32* %26, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %387, label %342

342:                                              ; preds = %337
  %343 = call i32 @FD_ZERO(i32* %10)
  %344 = call i32 (...) @fileno_stdin()
  %345 = call i32 @openssl_fdset(i32 %344, i32* %10)
  %346 = load i32, i32* %5, align 4
  %347 = call i32 @openssl_fdset(i32 %346, i32* %10)
  %348 = load i32*, i32** %16, align 8
  %349 = call i64 @SSL_is_dtls(i32* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %342
  %352 = load i32*, i32** %16, align 8
  %353 = call i64 @DTLSv1_get_timeout(i32* %352, %struct.timeval* %18)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  store %struct.timeval* %18, %struct.timeval** %19, align 8
  br label %357

356:                                              ; preds = %351, %342
  store %struct.timeval* null, %struct.timeval** %19, align 8
  br label %357

357:                                              ; preds = %356, %355
  %358 = load i32, i32* %12, align 4
  %359 = bitcast i32* %10 to i8*
  %360 = load %struct.timeval*, %struct.timeval** %19, align 8
  %361 = call i32 @select(i32 %358, i8* %359, i32* null, i32* null, %struct.timeval* %360)
  store i32 %361, i32* %14, align 4
  %362 = load i32*, i32** %16, align 8
  %363 = call i64 @SSL_is_dtls(i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %357
  %366 = load i32*, i32** %16, align 8
  %367 = call i64 @DTLSv1_handle_timeout(i32* %366)
  %368 = icmp sgt i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load i64, i64* @bio_err, align 8
  %371 = call i32 (i64, i8*, ...) @BIO_printf(i64 %370, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %372

372:                                              ; preds = %369, %365, %357
  %373 = load i32, i32* %14, align 4
  %374 = icmp sle i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  br label %324

376:                                              ; preds = %372
  %377 = call i32 (...) @fileno_stdin()
  %378 = call i64 @FD_ISSET(i32 %377, i32* %10)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i32 1, i32* %25, align 4
  br label %381

381:                                              ; preds = %380, %376
  %382 = load i32, i32* %5, align 4
  %383 = call i64 @FD_ISSET(i32 %382, i32* %10)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  store i32 1, i32* %26, align 4
  br label %386

386:                                              ; preds = %385, %381
  br label %387

387:                                              ; preds = %386, %337
  %388 = load i32, i32* %25, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %778

390:                                              ; preds = %387
  %391 = load i64, i64* @s_crlf, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %462

393:                                              ; preds = %390
  %394 = load i8*, i8** %9, align 8
  %395 = load i32, i32* @bufsize, align 4
  %396 = sdiv i32 %395, 2
  %397 = call i32 @raw_read_stdin(i8* %394, i32 %396)
  store i32 %397, i32* %14, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %398

398:                                              ; preds = %414, %393
  %399 = load i32, i32* %27, align 4
  %400 = load i32, i32* %14, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %417

402:                                              ; preds = %398
  %403 = load i8*, i8** %9, align 8
  %404 = load i32, i32* %27, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp eq i32 %408, 10
  br i1 %409, label %410, label %413

410:                                              ; preds = %402
  %411 = load i32, i32* %28, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %28, align 4
  br label %413

413:                                              ; preds = %410, %402
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %27, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %27, align 4
  br label %398

417:                                              ; preds = %398
  %418 = load i32, i32* %14, align 4
  %419 = sub nsw i32 %418, 1
  store i32 %419, i32* %27, align 4
  br label %420

420:                                              ; preds = %454, %417
  %421 = load i32, i32* %27, align 4
  %422 = icmp sge i32 %421, 0
  br i1 %422, label %423, label %457

423:                                              ; preds = %420
  %424 = load i8*, i8** %9, align 8
  %425 = load i32, i32* %27, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = load i8*, i8** %9, align 8
  %430 = load i32, i32* %27, align 4
  %431 = load i32, i32* %28, align 4
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, i8* %429, i64 %433
  store i8 %428, i8* %434, align 1
  %435 = load i8*, i8** %9, align 8
  %436 = load i32, i32* %27, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = icmp eq i32 %440, 10
  br i1 %441, label %442, label %453

442:                                              ; preds = %423
  %443 = load i32, i32* %28, align 4
  %444 = add nsw i32 %443, -1
  store i32 %444, i32* %28, align 4
  %445 = load i32, i32* %14, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %14, align 4
  %447 = load i8*, i8** %9, align 8
  %448 = load i32, i32* %27, align 4
  %449 = load i32, i32* %28, align 4
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %447, i64 %451
  store i8 13, i8* %452, align 1
  br label %453

453:                                              ; preds = %442, %423
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %27, align 4
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %27, align 4
  br label %420

457:                                              ; preds = %420
  %458 = load i32, i32* %28, align 4
  %459 = icmp eq i32 %458, 0
  %460 = zext i1 %459 to i32
  %461 = call i32 @assert(i32 %460)
  br label %466

462:                                              ; preds = %390
  %463 = load i8*, i8** %9, align 8
  %464 = load i32, i32* @bufsize, align 4
  %465 = call i32 @raw_read_stdin(i8* %463, i32 %464)
  store i32 %465, i32* %14, align 4
  br label %466

466:                                              ; preds = %462, %457
  %467 = load i32, i32* @s_quiet, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %692, label %469

469:                                              ; preds = %466
  %470 = load i32, i32* @s_brief, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %692, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* %14, align 4
  %474 = icmp sle i32 %473, 0
  br i1 %474, label %481, label %475

475:                                              ; preds = %472
  %476 = load i8*, i8** %9, align 8
  %477 = getelementptr inbounds i8, i8* %476, i64 0
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %479, 81
  br i1 %480, label %481, label %489

481:                                              ; preds = %475, %472
  %482 = load i64, i64* @bio_s_out, align 8
  %483 = call i32 (i64, i8*, ...) @BIO_printf(i64 %482, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %484 = load i64, i64* @bio_s_out, align 8
  %485 = call i32 @BIO_flush(i64 %484)
  %486 = load i32, i32* %5, align 4
  %487 = call i32 @BIO_closesocket(i32 %486)
  %488 = call i32 (...) @close_accept_socket()
  store i32 -11, i32* %11, align 4
  br label %882

489:                                              ; preds = %475
  %490 = load i32, i32* %14, align 4
  %491 = icmp sle i32 %490, 0
  br i1 %491, label %498, label %492

492:                                              ; preds = %489
  %493 = load i8*, i8** %9, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 0
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp eq i32 %496, 113
  br i1 %497, label %498, label %511

498:                                              ; preds = %492, %489
  %499 = load i64, i64* @bio_s_out, align 8
  %500 = call i32 (i64, i8*, ...) @BIO_printf(i64 %499, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %501 = load i64, i64* @bio_s_out, align 8
  %502 = call i32 @BIO_flush(i64 %501)
  %503 = load i32*, i32** %16, align 8
  %504 = call i64 @SSL_version(i32* %503)
  %505 = load i64, i64* @DTLS1_VERSION, align 8
  %506 = icmp ne i64 %504, %505
  br i1 %506, label %507, label %510

507:                                              ; preds = %498
  %508 = load i32, i32* %5, align 4
  %509 = call i32 @BIO_closesocket(i32 %508)
  br label %510

510:                                              ; preds = %507, %498
  br label %882

511:                                              ; preds = %492
  %512 = load i8*, i8** %9, align 8
  %513 = getelementptr inbounds i8, i8* %512, i64 0
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = icmp eq i32 %515, 66
  br i1 %516, label %517, label %534

517:                                              ; preds = %511
  %518 = load i8*, i8** %9, align 8
  %519 = getelementptr inbounds i8, i8* %518, i64 1
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  %522 = icmp eq i32 %521, 10
  br i1 %522, label %529, label %523

523:                                              ; preds = %517
  %524 = load i8*, i8** %9, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 1
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp eq i32 %527, 13
  br i1 %528, label %529, label %534

529:                                              ; preds = %523, %517
  %530 = load i64, i64* @bio_err, align 8
  %531 = call i32 (i64, i8*, ...) @BIO_printf(i64 %530, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %532 = load i32*, i32** %16, align 8
  %533 = call i32 @SSL_heartbeat(i32* %532)
  store i32 0, i32* %14, align 4
  br label %324

534:                                              ; preds = %523, %511
  %535 = load i8*, i8** %9, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 0
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 114
  br i1 %539, label %540, label %559

540:                                              ; preds = %534
  %541 = load i8*, i8** %9, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 1
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = icmp eq i32 %544, 10
  br i1 %545, label %552, label %546

546:                                              ; preds = %540
  %547 = load i8*, i8** %9, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 13
  br i1 %551, label %552, label %559

552:                                              ; preds = %546, %540
  %553 = load i32*, i32** %16, align 8
  %554 = call i32 @SSL_renegotiate(i32* %553)
  %555 = load i32*, i32** %16, align 8
  %556 = call i32 @SSL_do_handshake(i32* %555)
  store i32 %556, i32* %14, align 4
  %557 = load i32, i32* %14, align 4
  %558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %557)
  store i32 0, i32* %14, align 4
  br label %324

559:                                              ; preds = %546, %534
  %560 = load i8*, i8** %9, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 0
  %562 = load i8, i8* %561, align 1
  %563 = sext i8 %562 to i32
  %564 = icmp eq i32 %563, 82
  br i1 %564, label %565, label %589

565:                                              ; preds = %559
  %566 = load i8*, i8** %9, align 8
  %567 = getelementptr inbounds i8, i8* %566, i64 1
  %568 = load i8, i8* %567, align 1
  %569 = sext i8 %568 to i32
  %570 = icmp eq i32 %569, 10
  br i1 %570, label %577, label %571

571:                                              ; preds = %565
  %572 = load i8*, i8** %9, align 8
  %573 = getelementptr inbounds i8, i8* %572, i64 1
  %574 = load i8, i8* %573, align 1
  %575 = sext i8 %574 to i32
  %576 = icmp eq i32 %575, 13
  br i1 %576, label %577, label %589

577:                                              ; preds = %571, %565
  %578 = load i32*, i32** %16, align 8
  %579 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %580 = load i32, i32* @SSL_VERIFY_CLIENT_ONCE, align 4
  %581 = or i32 %579, %580
  %582 = call i32 @SSL_set_verify(i32* %578, i32 %581, i32* null)
  %583 = load i32*, i32** %16, align 8
  %584 = call i32 @SSL_renegotiate(i32* %583)
  %585 = load i32*, i32** %16, align 8
  %586 = call i32 @SSL_do_handshake(i32* %585)
  store i32 %586, i32* %14, align 4
  %587 = load i32, i32* %14, align 4
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %587)
  store i32 0, i32* %14, align 4
  br label %324

589:                                              ; preds = %571, %559
  %590 = load i8*, i8** %9, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 0
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i32
  %594 = icmp eq i32 %593, 75
  br i1 %594, label %601, label %595

595:                                              ; preds = %589
  %596 = load i8*, i8** %9, align 8
  %597 = getelementptr inbounds i8, i8* %596, i64 0
  %598 = load i8, i8* %597, align 1
  %599 = sext i8 %598 to i32
  %600 = icmp eq i32 %599, 107
  br i1 %600, label %601, label %631

601:                                              ; preds = %595, %589
  %602 = load i8*, i8** %9, align 8
  %603 = getelementptr inbounds i8, i8* %602, i64 1
  %604 = load i8, i8* %603, align 1
  %605 = sext i8 %604 to i32
  %606 = icmp eq i32 %605, 10
  br i1 %606, label %613, label %607

607:                                              ; preds = %601
  %608 = load i8*, i8** %9, align 8
  %609 = getelementptr inbounds i8, i8* %608, i64 1
  %610 = load i8, i8* %609, align 1
  %611 = sext i8 %610 to i32
  %612 = icmp eq i32 %611, 13
  br i1 %612, label %613, label %631

613:                                              ; preds = %607, %601
  %614 = load i32*, i32** %16, align 8
  %615 = load i8*, i8** %9, align 8
  %616 = getelementptr inbounds i8, i8* %615, i64 0
  %617 = load i8, i8* %616, align 1
  %618 = sext i8 %617 to i32
  %619 = icmp eq i32 %618, 75
  br i1 %619, label %620, label %622

620:                                              ; preds = %613
  %621 = load i32, i32* @SSL_KEY_UPDATE_REQUESTED, align 4
  br label %624

622:                                              ; preds = %613
  %623 = load i32, i32* @SSL_KEY_UPDATE_NOT_REQUESTED, align 4
  br label %624

624:                                              ; preds = %622, %620
  %625 = phi i32 [ %621, %620 ], [ %623, %622 ]
  %626 = call i32 @SSL_key_update(i32* %614, i32 %625)
  %627 = load i32*, i32** %16, align 8
  %628 = call i32 @SSL_do_handshake(i32* %627)
  store i32 %628, i32* %14, align 4
  %629 = load i32, i32* %14, align 4
  %630 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %629)
  store i32 0, i32* %14, align 4
  br label %324

631:                                              ; preds = %607, %595
  %632 = load i8*, i8** %9, align 8
  %633 = getelementptr inbounds i8, i8* %632, i64 0
  %634 = load i8, i8* %633, align 1
  %635 = sext i8 %634 to i32
  %636 = icmp eq i32 %635, 99
  br i1 %636, label %637, label %667

637:                                              ; preds = %631
  %638 = load i8*, i8** %9, align 8
  %639 = getelementptr inbounds i8, i8* %638, i64 1
  %640 = load i8, i8* %639, align 1
  %641 = sext i8 %640 to i32
  %642 = icmp eq i32 %641, 10
  br i1 %642, label %649, label %643

643:                                              ; preds = %637
  %644 = load i8*, i8** %9, align 8
  %645 = getelementptr inbounds i8, i8* %644, i64 1
  %646 = load i8, i8* %645, align 1
  %647 = sext i8 %646 to i32
  %648 = icmp eq i32 %647, 13
  br i1 %648, label %649, label %667

649:                                              ; preds = %643, %637
  %650 = load i32*, i32** %16, align 8
  %651 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %652 = call i32 @SSL_set_verify(i32* %650, i32 %651, i32* null)
  %653 = load i32*, i32** %16, align 8
  %654 = call i32 @SSL_verify_client_post_handshake(i32* %653)
  store i32 %654, i32* %14, align 4
  %655 = load i32, i32* %14, align 4
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %649
  %658 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %659 = load i64, i64* @bio_err, align 8
  %660 = call i32 @ERR_print_errors(i64 %659)
  br label %666

661:                                              ; preds = %649
  %662 = load i32*, i32** %16, align 8
  %663 = call i32 @SSL_do_handshake(i32* %662)
  store i32 %663, i32* %14, align 4
  %664 = load i32, i32* %14, align 4
  %665 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %664)
  store i32 0, i32* %14, align 4
  br label %666

666:                                              ; preds = %661, %657
  br label %324

667:                                              ; preds = %643, %631
  %668 = load i8*, i8** %9, align 8
  %669 = getelementptr inbounds i8, i8* %668, i64 0
  %670 = load i8, i8* %669, align 1
  %671 = sext i8 %670 to i32
  %672 = icmp eq i32 %671, 80
  br i1 %672, label %673, label %680

673:                                              ; preds = %667
  %674 = load i32*, i32** %16, align 8
  %675 = call i32 @SSL_get_wbio(i32* %674)
  %676 = load i8*, i8** @sv_body.str, align 8
  %677 = load i8*, i8** @sv_body.str, align 8
  %678 = call i32 @strlen(i8* %677)
  %679 = call i32 @BIO_write(i32 %675, i8* %676, i32 %678)
  br label %680

680:                                              ; preds = %673, %667
  %681 = load i8*, i8** %9, align 8
  %682 = getelementptr inbounds i8, i8* %681, i64 0
  %683 = load i8, i8* %682, align 1
  %684 = sext i8 %683 to i32
  %685 = icmp eq i32 %684, 83
  br i1 %685, label %686, label %691

686:                                              ; preds = %680
  %687 = load i64, i64* @bio_s_out, align 8
  %688 = load i32*, i32** %16, align 8
  %689 = call i32 @SSL_get_SSL_CTX(i32* %688)
  %690 = call i32 @print_stats(i64 %687, i32 %689)
  br label %691

691:                                              ; preds = %686, %680
  br label %692

692:                                              ; preds = %691, %469, %466
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  br label %693

693:                                              ; preds = %776, %692
  %694 = load i32*, i32** %16, align 8
  %695 = load i8*, i8** %9, align 8
  %696 = load i64, i64* %15, align 8
  %697 = getelementptr inbounds i8, i8* %695, i64 %696
  %698 = load i32, i32* %14, align 4
  %699 = call i32 @SSL_write(i32* %694, i8* %697, i32 %698)
  store i32 %699, i32* %13, align 4
  br label %700

700:                                              ; preds = %725, %693
  %701 = load i32*, i32** %16, align 8
  %702 = load i32, i32* %13, align 4
  %703 = call i32 @SSL_get_error(i32* %701, i32 %702)
  %704 = icmp eq i32 %703, 129
  br i1 %704, label %705, label %732

705:                                              ; preds = %700
  %706 = load i64, i64* @bio_s_out, align 8
  %707 = call i32 (i64, i8*, ...) @BIO_printf(i64 %706, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %708 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %709 = call i32 @SRP_user_pwd_free(%struct.TYPE_4__* %708)
  %710 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 2), align 4
  %711 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 1), align 8
  %712 = call i8* @SRP_VBASE_get1_by_user(i32 %710, i32 %711)
  %713 = bitcast i8* %712 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %713, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %714 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %715 = icmp ne %struct.TYPE_4__* %714, null
  br i1 %715, label %716, label %722

716:                                              ; preds = %705
  %717 = load i64, i64* @bio_s_out, align 8
  %718 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %719 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  %721 = call i32 (i64, i8*, ...) @BIO_printf(i64 %717, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %720)
  br label %725

722:                                              ; preds = %705
  %723 = load i64, i64* @bio_s_out, align 8
  %724 = call i32 (i64, i8*, ...) @BIO_printf(i64 %723, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %725

725:                                              ; preds = %722, %716
  %726 = load i32*, i32** %16, align 8
  %727 = load i8*, i8** %9, align 8
  %728 = load i64, i64* %15, align 8
  %729 = getelementptr inbounds i8, i8* %727, i64 %728
  %730 = load i32, i32* %14, align 4
  %731 = call i32 @SSL_write(i32* %726, i8* %729, i32 %730)
  store i32 %731, i32* %13, align 4
  br label %700

732:                                              ; preds = %700
  %733 = load i32*, i32** %16, align 8
  %734 = load i32, i32* %13, align 4
  %735 = call i32 @SSL_get_error(i32* %733, i32 %734)
  switch i32 %735, label %761 [
    i32 136, label %736
    i32 133, label %737
    i32 130, label %744
    i32 131, label %744
    i32 129, label %744
    i32 132, label %749
    i32 134, label %749
    i32 135, label %749
    i32 128, label %756
  ]

736:                                              ; preds = %732
  br label %761

737:                                              ; preds = %732
  %738 = load i64, i64* @bio_s_out, align 8
  %739 = call i32 (i64, i8*, ...) @BIO_printf(i64 %738, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %740 = load i64, i64* @bio_s_out, align 8
  %741 = call i32 @BIO_flush(i64 %740)
  %742 = load i32*, i32** %16, align 8
  %743 = call i32 @wait_for_async(i32* %742)
  br label %761

744:                                              ; preds = %732, %732, %732
  %745 = load i64, i64* @bio_s_out, align 8
  %746 = call i32 (i64, i8*, ...) @BIO_printf(i64 %745, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %747 = load i64, i64* @bio_s_out, align 8
  %748 = call i32 @BIO_flush(i64 %747)
  br label %761

749:                                              ; preds = %732, %732, %732
  %750 = load i64, i64* @bio_s_out, align 8
  %751 = call i32 (i64, i8*, ...) @BIO_printf(i64 %750, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %752 = load i64, i64* @bio_s_out, align 8
  %753 = call i32 @BIO_flush(i64 %752)
  %754 = load i64, i64* @bio_err, align 8
  %755 = call i32 @ERR_print_errors(i64 %754)
  store i32 1, i32* %11, align 4
  br label %882

756:                                              ; preds = %732
  %757 = load i64, i64* @bio_s_out, align 8
  %758 = call i32 (i64, i8*, ...) @BIO_printf(i64 %757, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %759 = load i64, i64* @bio_s_out, align 8
  %760 = call i32 @BIO_flush(i64 %759)
  store i32 1, i32* %11, align 4
  br label %882

761:                                              ; preds = %732, %744, %737, %736
  %762 = load i32, i32* %13, align 4
  %763 = icmp sgt i32 %762, 0
  br i1 %763, label %764, label %772

764:                                              ; preds = %761
  %765 = load i32, i32* %13, align 4
  %766 = sext i32 %765 to i64
  %767 = load i64, i64* %15, align 8
  %768 = add i64 %767, %766
  store i64 %768, i64* %15, align 8
  %769 = load i32, i32* %13, align 4
  %770 = load i32, i32* %14, align 4
  %771 = sub nsw i32 %770, %769
  store i32 %771, i32* %14, align 4
  br label %772

772:                                              ; preds = %764, %761
  %773 = load i32, i32* %14, align 4
  %774 = icmp sle i32 %773, 0
  br i1 %774, label %775, label %776

775:                                              ; preds = %772
  br label %777

776:                                              ; preds = %772
  br label %693

777:                                              ; preds = %775
  br label %778

778:                                              ; preds = %777, %387
  %779 = load i32, i32* %26, align 4
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %881

781:                                              ; preds = %778
  %782 = load i64, i64* @async, align 8
  %783 = icmp ne i64 %782, 0
  br i1 %783, label %784, label %788

784:                                              ; preds = %781
  %785 = load i32*, i32** %16, align 8
  %786 = call i64 @SSL_waiting_for_async(i32* %785)
  %787 = icmp ne i64 %786, 0
  br i1 %787, label %804, label %788

788:                                              ; preds = %784, %781
  %789 = load i32*, i32** %16, align 8
  %790 = call i64 @SSL_is_init_finished(i32* %789)
  %791 = icmp ne i64 %790, 0
  br i1 %791, label %804, label %792

792:                                              ; preds = %788
  %793 = load i32*, i32** %16, align 8
  %794 = call i32 @init_ssl_connection(i32* %793)
  store i32 %794, i32* %14, align 4
  %795 = load i32, i32* %14, align 4
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %797, label %798

797:                                              ; preds = %792
  store i32 0, i32* %11, align 4
  br label %882

798:                                              ; preds = %792
  %799 = load i32, i32* %14, align 4
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %802

801:                                              ; preds = %798
  store i32 1, i32* %11, align 4
  br label %882

802:                                              ; preds = %798
  br label %803

803:                                              ; preds = %802
  br label %880

804:                                              ; preds = %788, %784
  br label %805

805:                                              ; preds = %853, %804
  %806 = load i32*, i32** %16, align 8
  %807 = load i8*, i8** %9, align 8
  %808 = load i32, i32* @bufsize, align 4
  %809 = call i32 @SSL_read(i32* %806, i8* %807, i32 %808)
  store i32 %809, i32* %14, align 4
  br label %810

810:                                              ; preds = %835, %805
  %811 = load i32*, i32** %16, align 8
  %812 = load i32, i32* %14, align 4
  %813 = call i32 @SSL_get_error(i32* %811, i32 %812)
  %814 = icmp eq i32 %813, 129
  br i1 %814, label %815, label %840

815:                                              ; preds = %810
  %816 = load i64, i64* @bio_s_out, align 8
  %817 = call i32 (i64, i8*, ...) @BIO_printf(i64 %816, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %818 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %819 = call i32 @SRP_user_pwd_free(%struct.TYPE_4__* %818)
  %820 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 2), align 4
  %821 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 1), align 8
  %822 = call i8* @SRP_VBASE_get1_by_user(i32 %820, i32 %821)
  %823 = bitcast i8* %822 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %823, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %824 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %825 = icmp ne %struct.TYPE_4__* %824, null
  br i1 %825, label %826, label %832

826:                                              ; preds = %815
  %827 = load i64, i64* @bio_s_out, align 8
  %828 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %829 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = call i32 (i64, i8*, ...) @BIO_printf(i64 %827, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %830)
  br label %835

832:                                              ; preds = %815
  %833 = load i64, i64* @bio_s_out, align 8
  %834 = call i32 (i64, i8*, ...) @BIO_printf(i64 %833, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %835

835:                                              ; preds = %832, %826
  %836 = load i32*, i32** %16, align 8
  %837 = load i8*, i8** %9, align 8
  %838 = load i32, i32* @bufsize, align 4
  %839 = call i32 @SSL_read(i32* %836, i8* %837, i32 %838)
  store i32 %839, i32* %14, align 4
  br label %810

840:                                              ; preds = %810
  %841 = load i32*, i32** %16, align 8
  %842 = load i32, i32* %14, align 4
  %843 = call i32 @SSL_get_error(i32* %841, i32 %842)
  switch i32 %843, label %879 [
    i32 136, label %844
    i32 133, label %855
    i32 130, label %862
    i32 131, label %862
    i32 132, label %867
    i32 134, label %867
    i32 135, label %867
    i32 128, label %874
  ]

844:                                              ; preds = %840
  %845 = load i8*, i8** %9, align 8
  %846 = load i32, i32* %14, align 4
  %847 = call i32 @raw_write_stdout(i8* %845, i32 %846)
  %848 = load i64, i64* @bio_s_out, align 8
  %849 = call i32 @BIO_flush(i64 %848)
  %850 = load i32*, i32** %16, align 8
  %851 = call i64 @SSL_has_pending(i32* %850)
  %852 = icmp ne i64 %851, 0
  br i1 %852, label %853, label %854

853:                                              ; preds = %844
  br label %805

854:                                              ; preds = %844
  br label %879

855:                                              ; preds = %840
  %856 = load i64, i64* @bio_s_out, align 8
  %857 = call i32 (i64, i8*, ...) @BIO_printf(i64 %856, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %858 = load i64, i64* @bio_s_out, align 8
  %859 = call i32 @BIO_flush(i64 %858)
  %860 = load i32*, i32** %16, align 8
  %861 = call i32 @wait_for_async(i32* %860)
  br label %879

862:                                              ; preds = %840, %840
  %863 = load i64, i64* @bio_s_out, align 8
  %864 = call i32 (i64, i8*, ...) @BIO_printf(i64 %863, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %865 = load i64, i64* @bio_s_out, align 8
  %866 = call i32 @BIO_flush(i64 %865)
  br label %879

867:                                              ; preds = %840, %840, %840
  %868 = load i64, i64* @bio_s_out, align 8
  %869 = call i32 (i64, i8*, ...) @BIO_printf(i64 %868, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %870 = load i64, i64* @bio_s_out, align 8
  %871 = call i32 @BIO_flush(i64 %870)
  %872 = load i64, i64* @bio_err, align 8
  %873 = call i32 @ERR_print_errors(i64 %872)
  store i32 1, i32* %11, align 4
  br label %882

874:                                              ; preds = %840
  %875 = load i64, i64* @bio_s_out, align 8
  %876 = call i32 (i64, i8*, ...) @BIO_printf(i64 %875, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %877 = load i64, i64* @bio_s_out, align 8
  %878 = call i32 @BIO_flush(i64 %877)
  store i32 1, i32* %11, align 4
  br label %882

879:                                              ; preds = %840, %862, %855, %854
  br label %880

880:                                              ; preds = %879, %803
  br label %881

881:                                              ; preds = %880, %778
  br label %324

882:                                              ; preds = %874, %867, %801, %797, %756, %749, %510, %481, %265, %174, %148, %133, %91, %84, %63
  %883 = load i32*, i32** %16, align 8
  %884 = icmp ne i32* %883, null
  br i1 %884, label %885, label %895

885:                                              ; preds = %882
  %886 = load i64, i64* @bio_s_out, align 8
  %887 = call i32 (i64, i8*, ...) @BIO_printf(i64 %886, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %888 = load i32*, i32** %16, align 8
  %889 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %890 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %891 = or i32 %889, %890
  %892 = call i32 @SSL_set_shutdown(i32* %888, i32 %891)
  %893 = load i32*, i32** %16, align 8
  %894 = call i32 @SSL_free(i32* %893)
  br label %895

895:                                              ; preds = %885, %882
  %896 = load i64, i64* @bio_s_out, align 8
  %897 = call i32 (i64, i8*, ...) @BIO_printf(i64 %896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %898 = load i8*, i8** %9, align 8
  %899 = load i32, i32* @bufsize, align 4
  %900 = call i32 @OPENSSL_clear_free(i8* %898, i32 %899)
  %901 = load i32, i32* %11, align 4
  ret i32 %901
}

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @BIO_socket_nbio(i32, i32) #1

declare dso_local i32 @ERR_print_errors(i64) #1

declare dso_local i32 @BIO_printf(i64, i8*, ...) #1

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @SSL_set_tlsext_debug_callback(i32*, i32) #1

declare dso_local i32 @SSL_set_tlsext_debug_arg(i32*, i64) #1

declare dso_local i32 @SSL_set_session_id_context(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SSL_clear(i32*) #1

declare dso_local i32* @BIO_new_dgram_sctp(i32, i32) #1

declare dso_local i32* @BIO_new_dgram(i32, i32) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, %struct.timeval*) #1

declare dso_local i64 @DTLS_get_link_min_mtu(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_set_options(i32*, i32) #1

declare dso_local i32 @DTLS_set_link_mtu(i32*, i64) #1

declare dso_local i32* @BIO_new_socket(i32, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_nbio_test(...) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_set_accept_state(i32*) #1

declare dso_local i32 @BIO_set_callback(i32, i32) #1

declare dso_local i32 @SSL_get_rbio(i32*) #1

declare dso_local i32 @BIO_set_callback_arg(i32, i8*) #1

declare dso_local i32 @SSL_set_msg_callback(i32*, i32) #1

declare dso_local i32 @SSL_set_msg_callback_arg(i32*, i64) #1

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @raw_write_stdout(i8*, i32) #1

declare dso_local i32 @BIO_flush(i64) #1

declare dso_local i64 @SSL_get_early_data_status(i32*) #1

declare dso_local i64 @SSL_is_init_finished(i32*) #1

declare dso_local i32 @print_connection_info(i32*) #1

declare dso_local i32 @fileno_stdin(...) #1

declare dso_local i64 @SSL_has_pending(i32*) #1

declare dso_local i64 @SSL_waiting_for_async(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openssl_fdset(i32, i32*) #1

declare dso_local i64 @SSL_is_dtls(i32*) #1

declare dso_local i64 @DTLSv1_get_timeout(i32*, %struct.timeval*) #1

declare dso_local i32 @select(i32, i8*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @DTLSv1_handle_timeout(i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @raw_read_stdin(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @close_accept_socket(...) #1

declare dso_local i64 @SSL_version(i32*) #1

declare dso_local i32 @SSL_heartbeat(i32*) #1

declare dso_local i32 @SSL_renegotiate(i32*) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SSL_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_key_update(i32*, i32) #1

declare dso_local i32 @SSL_verify_client_post_handshake(i32*) #1

declare dso_local i32 @BIO_write(i32, i8*, i32) #1

declare dso_local i32 @SSL_get_wbio(i32*) #1

declare dso_local i32 @print_stats(i64, i32) #1

declare dso_local i32 @SSL_get_SSL_CTX(i32*) #1

declare dso_local i32 @SSL_write(i32*, i8*, i32) #1

declare dso_local i32 @SRP_user_pwd_free(%struct.TYPE_4__*) #1

declare dso_local i8* @SRP_VBASE_get1_by_user(i32, i32) #1

declare dso_local i32 @wait_for_async(i32*) #1

declare dso_local i32 @init_ssl_connection(i32*) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_set_shutdown(i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
