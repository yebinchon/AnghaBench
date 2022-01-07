; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_time.c_s_time_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_time.c_s_time_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SSL_CONNECT_NAME = common dso_local global i8* null, align 8
@SECONDS = common dso_local global i32 0, align 4
@s_time_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verify_args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: verify depth is %d\0A\00", align 1
@fmt_http_get_cmd_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: -www option is too long\0A\00", align 1
@SSL3_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL_CIPHER\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@SSL_OP_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Collecting connection statistics for %d seconds\0A\00", align 1
@START = common dso_local global i32 0, align 4
@fmt_http_get_cmd = common dso_local global i32 0, align 4
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"\0A\0A%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"%d connections in %ld real seconds, %ld bytes read per connection\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\0A\0ANow timing with session id reuse.\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unable to get connection\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_time_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %34 = load i8*, i8** @SSL_CONNECT_NAME, align 8
  store i8* %34, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %35 = load i32, i32* @SECONDS, align 4
  store i32 %35, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 3, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %30, align 4
  %36 = call i32* (...) @TLS_client_method()
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @s_time_options, align 4
  %40 = call i8* @opt_init(i32 %37, i8** %38, i32 %39)
  store i8* %40, i8** %17, align 8
  br label %41

41:                                               ; preds = %110, %2
  %42 = call i32 (...) @opt_next()
  store i32 %42, i32* %29, align 4
  %43 = icmp ne i32 %42, 140
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = load i32, i32* %29, align 4
  switch i32 %45, label %110 [
    i32 140, label %46
    i32 139, label %46
    i32 138, label %51
    i32 141, label %54
    i32 132, label %56
    i32 135, label %57
    i32 129, label %58
    i32 144, label %68
    i32 136, label %70
    i32 137, label %76
    i32 145, label %78
    i32 146, label %80
    i32 133, label %82
    i32 134, label %83
    i32 143, label %84
    i32 142, label %86
    i32 147, label %88
    i32 130, label %89
    i32 128, label %95
    i32 131, label %108
  ]

46:                                               ; preds = %44, %44
  br label %47

47:                                               ; preds = %115, %93, %62, %46
  %48 = load i32, i32* @bio_err, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %461

51:                                               ; preds = %44
  %52 = load i32, i32* @s_time_options, align 4
  %53 = call i32 @opt_help(i32 %52)
  store i32 0, i32* %24, align 4
  br label %461

54:                                               ; preds = %44
  %55 = call i8* (...) @opt_arg()
  store i8* %55, i8** %14, align 8
  br label %110

56:                                               ; preds = %44
  store i32 2, i32* %23, align 4
  br label %110

57:                                               ; preds = %44
  store i32 1, i32* %23, align 4
  br label %110

58:                                               ; preds = %44
  %59 = call i8* (...) @opt_arg()
  %60 = call i32 @opt_int(i8* %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %47

63:                                               ; preds = %58
  %64 = load i32, i32* @bio_err, align 4
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 4
  %67 = call i32 (i32, i8*, ...) @BIO_printf(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %66)
  br label %110

68:                                               ; preds = %44
  %69 = call i8* (...) @opt_arg()
  store i8* %69, i8** %15, align 8
  br label %110

70:                                               ; preds = %44
  %71 = call i8* (...) @opt_arg()
  %72 = call i32 @set_nameopt(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %461

75:                                               ; preds = %70
  br label %110

76:                                               ; preds = %44
  %77 = call i8* (...) @opt_arg()
  store i8* %77, i8** %16, align 8
  br label %110

78:                                               ; preds = %44
  %79 = call i8* (...) @opt_arg()
  store i8* %79, i8** %9, align 8
  br label %110

80:                                               ; preds = %44
  %81 = call i8* (...) @opt_arg()
  store i8* %81, i8** %10, align 8
  br label %110

82:                                               ; preds = %44
  store i32 1, i32* %19, align 4
  br label %110

83:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %110

84:                                               ; preds = %44
  %85 = call i8* (...) @opt_arg()
  store i8* %85, i8** %11, align 8
  br label %110

86:                                               ; preds = %44
  %87 = call i8* (...) @opt_arg()
  store i8* %87, i8** %12, align 8
  br label %110

88:                                               ; preds = %44
  store i32 1, i32* %26, align 4
  br label %110

89:                                               ; preds = %44
  %90 = call i8* (...) @opt_arg()
  %91 = call i32 @opt_int(i8* %90, i32* %21)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %47

94:                                               ; preds = %89
  br label %110

95:                                               ; preds = %44
  %96 = call i8* (...) @opt_arg()
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = load i64, i64* @fmt_http_get_cmd_size, align 8
  %100 = add i64 %98, %99
  store i64 %100, i64* %33, align 8
  %101 = load i64, i64* %33, align 8
  %102 = icmp ugt i64 %101, 8192
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @bio_err, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %461

107:                                              ; preds = %95
  br label %110

108:                                              ; preds = %44
  %109 = load i32, i32* @SSL3_VERSION, align 4
  store i32 %109, i32* %30, align 4
  br label %110

110:                                              ; preds = %44, %108, %107, %94, %88, %86, %84, %83, %82, %80, %78, %76, %75, %68, %63, %57, %56, %54
  br label %41

111:                                              ; preds = %41
  %112 = call i32 (...) @opt_num_rest()
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %47

116:                                              ; preds = %111
  %117 = load i8*, i8** %11, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %120, i8** %11, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32*, i32** %8, align 8
  %123 = call i32* @SSL_CTX_new(i32* %122)
  store i32* %123, i32** %7, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %461

126:                                              ; preds = %121
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %129 = call i32 @SSL_CTX_set_mode(i32* %127, i32 %128)
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @SSL_CTX_set_quiet_shutdown(i32* %130, i32 1)
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %30, align 4
  %134 = call i64 @SSL_CTX_set_max_proto_version(i32* %132, i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %461

137:                                              ; preds = %126
  %138 = load i32, i32* %26, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @SSL_OP_ALL, align 4
  %143 = call i32 @SSL_CTX_set_options(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i8*, i8** %11, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32*, i32** %7, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @SSL_CTX_set_cipher_list(i32* %148, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %461

153:                                              ; preds = %147, %144
  %154 = load i8*, i8** %12, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32*, i32** %7, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @SSL_CTX_set_ciphersuites(i32* %157, i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %461

162:                                              ; preds = %156, %153
  %163 = load i32*, i32** %7, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 @set_cert_stuff(i32* %163, i8* %164, i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  br label %461

169:                                              ; preds = %162
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %19, align 4
  %175 = call i32 @ctx_set_verify_locations(i32* %170, i8* %171, i8* %172, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @bio_err, align 4
  %179 = call i32 @ERR_print_errors(i32 %178)
  br label %461

180:                                              ; preds = %169
  %181 = load i32, i32* %23, align 4
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  br label %304

185:                                              ; preds = %180
  %186 = load i32, i32* %21, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  store i64 0, i64* %27, align 8
  %188 = call i64 @time(i32* null)
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  store i64 %191, i64* %28, align 8
  %192 = load i32, i32* @START, align 4
  %193 = call double @tm_Time_F(i32 %192)
  br label %194

194:                                              ; preds = %264, %185
  %195 = load i64, i64* %28, align 8
  %196 = call i64 @time(i32* null)
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %272

199:                                              ; preds = %194
  %200 = load i8*, i8** %14, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = call i32* @doConnection(i32* null, i8* %200, i32* %201)
  store i32* %202, i32** %6, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %461

205:                                              ; preds = %199
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %234

208:                                              ; preds = %205
  %209 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %210 = load i32, i32* @fmt_http_get_cmd, align 4
  %211 = load i8*, i8** %13, align 8
  %212 = call i32 @BIO_snprintf(i8* %209, i32 8192, i32 %210, i8* %211)
  store i32 %212, i32* %32, align 4
  %213 = load i32, i32* %32, align 4
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %208
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %218 = load i32, i32* %32, align 4
  %219 = call i64 @SSL_write(i32* %216, i8* %217, i32 %218)
  %220 = icmp sle i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215, %208
  br label %461

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %228, %222
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %226 = call i32 @SSL_read(i32* %224, i8* %225, i32 8192)
  store i32 %226, i32* %25, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* %25, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %27, align 8
  %232 = add nsw i64 %231, %230
  store i64 %232, i64* %27, align 8
  br label %223

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233, %205
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %237 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @SSL_set_shutdown(i32* %235, i32 %238)
  %240 = load i32*, i32** %6, align 8
  %241 = call i32 @SSL_get_fd(i32* %240)
  %242 = call i32 @BIO_closesocket(i32 %241)
  %243 = load i32, i32* %22, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %22, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = call i64 @SSL_session_reused(i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %234
  store i32 114, i32* %31, align 4
  br label %264

249:                                              ; preds = %234
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @SSL_version(i32* %250)
  store i32 %251, i32* %31, align 4
  %252 = load i32, i32* %31, align 4
  %253 = load i32, i32* @TLS1_VERSION, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store i32 116, i32* %31, align 4
  br label %263

256:                                              ; preds = %249
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* @SSL3_VERSION, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 51, i32* %31, align 4
  br label %262

261:                                              ; preds = %256
  store i32 42, i32* %31, align 4
  br label %262

262:                                              ; preds = %261, %260
  br label %263

263:                                              ; preds = %262, %255
  br label %264

264:                                              ; preds = %263, %248
  %265 = load i32, i32* %31, align 4
  %266 = load i32, i32* @stdout, align 4
  %267 = call i32 @fputc(i32 %265, i32 %266)
  %268 = load i32, i32* @stdout, align 4
  %269 = call i32 @fflush(i32 %268)
  %270 = load i32*, i32** %6, align 8
  %271 = call i32 @SSL_free(i32* %270)
  store i32* null, i32** %6, align 8
  br label %194

272:                                              ; preds = %198
  %273 = load i32, i32* @STOP, align 4
  %274 = call double @tm_Time_F(i32 %273)
  %275 = load double, double* %18, align 8
  %276 = fadd double %275, %274
  store double %276, double* %18, align 8
  %277 = call i64 @time(i32* null)
  %278 = load i64, i64* %28, align 8
  %279 = sub nsw i64 %277, %278
  %280 = load i32, i32* %21, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %25, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load double, double* %18, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sitofp i32 %286 to double
  %288 = load double, double* %18, align 8
  %289 = fdiv double %287, %288
  %290 = load i64, i64* %27, align 8
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %284, double %285, double %289, i64 %290)
  %292 = load i32, i32* %22, align 4
  %293 = call i64 @time(i32* null)
  %294 = load i64, i64* %28, align 8
  %295 = sub nsw i64 %293, %294
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = load i64, i64* %27, align 8
  %300 = load i32, i32* %22, align 4
  %301 = sext i32 %300 to i64
  %302 = sdiv i64 %299, %301
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %292, i64 %298, i64 %302)
  br label %304

304:                                              ; preds = %272, %184
  %305 = load i32, i32* %23, align 4
  %306 = and i32 %305, 2
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %304
  br label %461

309:                                              ; preds = %304
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %311 = load i8*, i8** %14, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = call i32* @doConnection(i32* null, i8* %311, i32* %312)
  store i32* %313, i32** %6, align 8
  %314 = icmp eq i32* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i32, i32* @bio_err, align 4
  %317 = call i32 (i32, i8*, ...) @BIO_printf(i32 %316, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %461

318:                                              ; preds = %309
  %319 = load i8*, i8** %13, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %343

321:                                              ; preds = %318
  %322 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %323 = load i32, i32* @fmt_http_get_cmd, align 4
  %324 = load i8*, i8** %13, align 8
  %325 = call i32 @BIO_snprintf(i8* %322, i32 8192, i32 %323, i8* %324)
  store i32 %325, i32* %32, align 4
  %326 = load i32, i32* %32, align 4
  %327 = icmp sle i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %321
  %329 = load i32*, i32** %6, align 8
  %330 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %331 = load i32, i32* %32, align 4
  %332 = call i64 @SSL_write(i32* %329, i8* %330, i32 %331)
  %333 = icmp sle i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %328, %321
  br label %461

335:                                              ; preds = %328
  br label %336

336:                                              ; preds = %341, %335
  %337 = load i32*, i32** %6, align 8
  %338 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %339 = call i32 @SSL_read(i32* %337, i8* %338, i32 8192)
  store i32 %339, i32* %25, align 4
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  br label %336

342:                                              ; preds = %336
  br label %343

343:                                              ; preds = %342, %318
  %344 = load i32*, i32** %6, align 8
  %345 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %346 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @SSL_set_shutdown(i32* %344, i32 %347)
  %349 = load i32*, i32** %6, align 8
  %350 = call i32 @SSL_get_fd(i32* %349)
  %351 = call i32 @BIO_closesocket(i32 %350)
  store i32 0, i32* %22, align 4
  store double 0.000000e+00, double* %18, align 8
  %352 = call i64 @time(i32* null)
  %353 = load i32, i32* %21, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %352, %354
  store i64 %355, i64* %28, align 8
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* %27, align 8
  %357 = load i32, i32* @START, align 4
  %358 = call double @tm_Time_F(i32 %357)
  br label %359

359:                                              ; preds = %430, %343
  %360 = load i64, i64* %28, align 8
  %361 = call i64 @time(i32* null)
  %362 = icmp slt i64 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  br label %436

364:                                              ; preds = %359
  %365 = load i32*, i32** %6, align 8
  %366 = load i8*, i8** %14, align 8
  %367 = load i32*, i32** %7, align 8
  %368 = call i32* @doConnection(i32* %365, i8* %366, i32* %367)
  %369 = icmp eq i32* %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  br label %461

371:                                              ; preds = %364
  %372 = load i8*, i8** %13, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %400

374:                                              ; preds = %371
  %375 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %376 = load i32, i32* @fmt_http_get_cmd, align 4
  %377 = load i8*, i8** %13, align 8
  %378 = call i32 @BIO_snprintf(i8* %375, i32 8192, i32 %376, i8* %377)
  store i32 %378, i32* %32, align 4
  %379 = load i32, i32* %32, align 4
  %380 = icmp sle i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %374
  %382 = load i32*, i32** %6, align 8
  %383 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %384 = load i32, i32* %32, align 4
  %385 = call i64 @SSL_write(i32* %382, i8* %383, i32 %384)
  %386 = icmp sle i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %381, %374
  br label %461

388:                                              ; preds = %381
  br label %389

389:                                              ; preds = %394, %388
  %390 = load i32*, i32** %6, align 8
  %391 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %392 = call i32 @SSL_read(i32* %390, i8* %391, i32 8192)
  store i32 %392, i32* %25, align 4
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %389
  %395 = load i32, i32* %25, align 4
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* %27, align 8
  %398 = add nsw i64 %397, %396
  store i64 %398, i64* %27, align 8
  br label %389

399:                                              ; preds = %389
  br label %400

400:                                              ; preds = %399, %371
  %401 = load i32*, i32** %6, align 8
  %402 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %403 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %404 = or i32 %402, %403
  %405 = call i32 @SSL_set_shutdown(i32* %401, i32 %404)
  %406 = load i32*, i32** %6, align 8
  %407 = call i32 @SSL_get_fd(i32* %406)
  %408 = call i32 @BIO_closesocket(i32 %407)
  %409 = load i32, i32* %22, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %22, align 4
  %411 = load i32*, i32** %6, align 8
  %412 = call i64 @SSL_session_reused(i32* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %400
  store i32 114, i32* %31, align 4
  br label %430

415:                                              ; preds = %400
  %416 = load i32*, i32** %6, align 8
  %417 = call i32 @SSL_version(i32* %416)
  store i32 %417, i32* %31, align 4
  %418 = load i32, i32* %31, align 4
  %419 = load i32, i32* @TLS1_VERSION, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %415
  store i32 116, i32* %31, align 4
  br label %429

422:                                              ; preds = %415
  %423 = load i32, i32* %31, align 4
  %424 = load i32, i32* @SSL3_VERSION, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %422
  store i32 51, i32* %31, align 4
  br label %428

427:                                              ; preds = %422
  store i32 42, i32* %31, align 4
  br label %428

428:                                              ; preds = %427, %426
  br label %429

429:                                              ; preds = %428, %421
  br label %430

430:                                              ; preds = %429, %414
  %431 = load i32, i32* %31, align 4
  %432 = load i32, i32* @stdout, align 4
  %433 = call i32 @fputc(i32 %431, i32 %432)
  %434 = load i32, i32* @stdout, align 4
  %435 = call i32 @fflush(i32 %434)
  br label %359

436:                                              ; preds = %363
  %437 = load i32, i32* @STOP, align 4
  %438 = call double @tm_Time_F(i32 %437)
  %439 = load double, double* %18, align 8
  %440 = fadd double %439, %438
  store double %440, double* %18, align 8
  %441 = load i32, i32* %22, align 4
  %442 = load double, double* %18, align 8
  %443 = load i32, i32* %22, align 4
  %444 = sitofp i32 %443 to double
  %445 = load double, double* %18, align 8
  %446 = fdiv double %444, %445
  %447 = load i64, i64* %27, align 8
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %441, double %442, double %446, i64 %447)
  %449 = load i32, i32* %22, align 4
  %450 = call i64 @time(i32* null)
  %451 = load i64, i64* %28, align 8
  %452 = sub nsw i64 %450, %451
  %453 = load i32, i32* %21, align 4
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %452, %454
  %456 = load i64, i64* %27, align 8
  %457 = load i32, i32* %22, align 4
  %458 = sext i32 %457 to i64
  %459 = sdiv i64 %456, %458
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %449, i64 %455, i64 %459)
  store i32 0, i32* %24, align 4
  br label %461

461:                                              ; preds = %436, %387, %370, %334, %315, %308, %221, %204, %177, %168, %161, %152, %136, %125, %103, %74, %51, %47
  %462 = load i32*, i32** %6, align 8
  %463 = call i32 @SSL_free(i32* %462)
  %464 = load i32*, i32** %7, align 8
  %465 = call i32 @SSL_CTX_free(i32* %464)
  %466 = load i32, i32* %24, align 4
  ret i32 %466
}

declare dso_local i32* @TLS_client_method(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @set_nameopt(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @SSL_CTX_new(i32*) #1

declare dso_local i32 @SSL_CTX_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_quiet_shutdown(i32*, i32) #1

declare dso_local i64 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #1

declare dso_local i32 @set_cert_stuff(i32*, i8*, i8*) #1

declare dso_local i32 @ctx_set_verify_locations(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local double @tm_Time_F(i32) #1

declare dso_local i32* @doConnection(i32*, i8*, i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i32, i8*) #1

declare dso_local i64 @SSL_write(i32*, i8*, i32) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_set_shutdown(i32*, i32) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @SSL_get_fd(i32*) #1

declare dso_local i64 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_version(i32*) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
