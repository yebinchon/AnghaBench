; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_read_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, %struct.TYPE_22__, %struct.TYPE_21__*, %struct.TYPE_18__*, i32, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_24__ = type { i32 }

@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@DTLS1_MT_HELLO_VERIFY_REQUEST = common dso_local global i32 0, align 4
@DTLS_ST_CR_HELLO_VERIFY_REQUEST = common dso_local global i8* null, align 8
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_PSK = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_DONE = common dso_local global i32 0, align 4
@TLS_ST_CR_SRVR_DONE = common dso_local global i8* null, align 8
@SSL3_MT_CERTIFICATE_STATUS = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_CR_FINISHED = common dso_local global i32 0, align 4
@SSL3_MT_HELLO_REQUEST = common dso_local global i32 0, align 4
@TLS_ST_CR_HELLO_REQ = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_read_transition(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 7
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %6, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call i64 @SSL_IS_TLS13(%struct.TYPE_23__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ossl_statem_client13_read_transition(%struct.TYPE_23__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %323

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %349

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %25 [
    i32 131, label %26
    i32 129, label %48
    i32 132, label %56
    i32 138, label %206
    i32 136, label %220
    i32 134, label %250
    i32 137, label %263
    i32 130, label %273
    i32 133, label %296
    i32 135, label %304
    i32 128, label %313
  ]

25:                                               ; preds = %21
  br label %322

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store i32 132, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %349

33:                                               ; preds = %26
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** @DTLS_ST_CR_HELLO_VERIFY_REQUEST, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %349

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %33
  br label %322

48:                                               ; preds = %21
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i32 132, i32* %54, align 4
  store i32 1, i32* %3, align 4
  br label %349

55:                                               ; preds = %48
  br label %322

56:                                               ; preds = %21
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  store i32 133, i32* %73, align 4
  store i32 1, i32* %3, align 4
  br label %349

74:                                               ; preds = %67
  br label %83

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  store i32 135, i32* %81, align 4
  store i32 1, i32* %3, align 4
  br label %349

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %74
  br label %205

84:                                               ; preds = %56
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** @DTLS_ST_CR_HELLO_VERIFY_REQUEST, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 1, i32* %3, align 4
  br label %349

97:                                               ; preds = %88, %84
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TLS1_VERSION, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 135, i32* %125, align 4
  store i32 1, i32* %3, align 4
  br label %349

126:                                              ; preds = %117, %109, %103, %97
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SSL_aNULL, align 4
  %136 = load i32, i32* @SSL_aSRP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @SSL_aPSK, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %134, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  store i32 138, i32* %148, align 4
  store i32 1, i32* %3, align 4
  br label %349

149:                                              ; preds = %142
  br label %202

150:                                              ; preds = %126
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = call i32 @key_exchange_expected(%struct.TYPE_23__* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SSL_PSK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %155
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167, %150
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  store i32 134, i32* %177, align 4
  store i32 1, i32* %3, align 4
  br label %349

178:                                              ; preds = %171
  br label %201

179:                                              ; preds = %167, %155
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = call i32 @cert_req_allowed(%struct.TYPE_23__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  store i32 137, i32* %189, align 4
  store i32 1, i32* %3, align 4
  br label %349

190:                                              ; preds = %183, %179
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @SSL3_MT_SERVER_DONE, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i8*, i8** @TLS_ST_CR_SRVR_DONE, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  store i32 1, i32* %3, align 4
  br label %349

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200, %178
  br label %202

202:                                              ; preds = %201, %149
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %83
  br label %322

206:                                              ; preds = %21
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @SSL3_MT_CERTIFICATE_STATUS, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  store i32 136, i32* %218, align 4
  store i32 1, i32* %3, align 4
  br label %349

219:                                              ; preds = %212, %206
  br label %220

220:                                              ; preds = %21, %219
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %222 = call i32 @key_exchange_expected(%struct.TYPE_23__* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %220
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @SSL_PSK, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %225
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %237, %220
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  store i32 134, i32* %247, align 4
  store i32 1, i32* %3, align 4
  br label %349

248:                                              ; preds = %241
  br label %323

249:                                              ; preds = %237, %225
  br label %250

250:                                              ; preds = %21, %249
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %256 = call i32 @cert_req_allowed(%struct.TYPE_23__* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  store i32 137, i32* %260, align 4
  store i32 1, i32* %3, align 4
  br label %349

261:                                              ; preds = %254
  br label %323

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %21, %262
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @SSL3_MT_SERVER_DONE, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i8*, i8** @TLS_ST_CR_SRVR_DONE, align 8
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 4
  store i32 1, i32* %3, align 4
  br label %349

272:                                              ; preds = %263
  br label %322

273:                                              ; preds = %21
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %273
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  store i32 133, i32* %285, align 4
  store i32 1, i32* %3, align 4
  br label %349

286:                                              ; preds = %279
  br label %295

287:                                              ; preds = %273
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 0
  store i32 135, i32* %293, align 4
  store i32 1, i32* %3, align 4
  br label %349

294:                                              ; preds = %287
  br label %295

295:                                              ; preds = %294, %286
  br label %322

296:                                              ; preds = %21
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  store i32 135, i32* %302, align 4
  store i32 1, i32* %3, align 4
  br label %349

303:                                              ; preds = %296
  br label %322

304:                                              ; preds = %21
  %305 = load i32, i32* %5, align 4
  %306 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* @TLS_ST_CR_FINISHED, align 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 4
  store i32 1, i32* %3, align 4
  br label %349

312:                                              ; preds = %304
  br label %322

313:                                              ; preds = %21
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @SSL3_MT_HELLO_REQUEST, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = load i32, i32* @TLS_ST_CR_HELLO_REQ, align 4
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 4
  store i32 1, i32* %3, align 4
  br label %349

321:                                              ; preds = %313
  br label %322

322:                                              ; preds = %321, %312, %303, %295, %272, %205, %55, %47, %25
  br label %323

323:                                              ; preds = %322, %261, %248, %19
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %325 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %343

327:                                              ; preds = %323
  %328 = load i32, i32* %5, align 4
  %329 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %343

331:                                              ; preds = %327
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 2
  store i64 0, i64* %333, align 8
  %334 = load i32, i32* @SSL_READING, align 4
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %338 = call i32* @SSL_get_rbio(%struct.TYPE_23__* %337)
  store i32* %338, i32** %8, align 8
  %339 = load i32*, i32** %8, align 8
  %340 = call i32 @BIO_clear_retry_flags(i32* %339)
  %341 = load i32*, i32** %8, align 8
  %342 = call i32 @BIO_set_retry_read(i32* %341)
  store i32 0, i32* %3, align 4
  br label %349

343:                                              ; preds = %327, %323
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %345 = load i32, i32* @SSL3_AD_UNEXPECTED_MESSAGE, align 4
  %346 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION, align 4
  %347 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %348 = call i32 @SSLfatal(%struct.TYPE_23__* %344, i32 %345, i32 %346, i32 %347)
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %343, %331, %317, %308, %300, %291, %283, %267, %258, %245, %216, %194, %187, %175, %146, %121, %92, %79, %71, %52, %41, %30, %20
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_23__*) #1

declare dso_local i32 @ossl_statem_client13_read_transition(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_23__*) #1

declare dso_local i32 @key_exchange_expected(%struct.TYPE_23__*) #1

declare dso_local i32 @cert_req_allowed(%struct.TYPE_23__*) #1

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_23__*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
