; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_post_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_post_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, i32, i32, %struct.TYPE_25__*, %struct.TYPE_22__*, i32, i32, i32, i32*, i64, %struct.TYPE_29__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { {}*, i32 (%struct.TYPE_28__*)* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }

@SSL_EARLY_DATA_CONNECTING = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL3_CC_EARLY = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@WORK_ERROR = common dso_local global i32 0, align 4
@WORK_MORE_A = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@WORK_MORE_B = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@SSL3_CC_APPLICATION = common dso_local global i32 0, align 4
@WORK_FINISHED_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_post_work(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 12
  store %struct.TYPE_29__* %8, %struct.TYPE_29__** %6, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 11
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 132, label %15
    i32 131, label %59
    i32 129, label %66
    i32 133, label %73
    i32 130, label %188
    i32 128, label %248
  ]

14:                                               ; preds = %2
  br label %261

15:                                               ; preds = %2
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %35 = load i32, i32* @SSL3_CC_EARLY, align 4
  %36 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @tls13_change_cipher_state(%struct.TYPE_28__* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @WORK_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %263

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %26
  br label %51

44:                                               ; preds = %21, %15
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %46 = call i32 @statem_flush(%struct.TYPE_28__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @WORK_MORE_A, align 4
  store i32 %49, i32* %3, align 4
  br label %263

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  br label %261

59:                                               ; preds = %2
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @EVP_CIPHER_CTX_free(i32* %62)
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 10
  store i32* null, i32** %65, align 8
  br label %261

66:                                               ; preds = %2
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %68 = call i32 @tls_client_key_exchange_post_work(%struct.TYPE_28__* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @WORK_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %263

72:                                               ; preds = %66
  br label %261

73:                                               ; preds = %2
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %75 = call i32 @SSL_IS_TLS13(%struct.TYPE_28__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SSL_HRR_PENDING, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %73
  br label %261

84:                                               ; preds = %77
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %97 = load i32, i32* @SSL3_CC_EARLY, align 4
  %98 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @tls13_change_cipher_state(%struct.TYPE_28__* %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @WORK_ERROR, align 4
  store i32 %103, i32* %3, align 4
  br label %263

104:                                              ; preds = %95
  br label %261

105:                                              ; preds = %90, %84
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = icmp eq %struct.TYPE_23__* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %105
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  br label %141

128:                                              ; preds = %105
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %128, %123
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %150 = call i32 %148(%struct.TYPE_28__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %141
  %153 = load i32, i32* @WORK_ERROR, align 4
  store i32 %153, i32* %3, align 4
  br label %263

154:                                              ; preds = %141
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = bitcast {}** %160 to i32 (%struct.TYPE_28__*, i32)**
  %162 = load i32 (%struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_28__*, i32)** %161, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %164 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %165 = call i32 %162(%struct.TYPE_28__* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %154
  %168 = load i32, i32* @WORK_ERROR, align 4
  store i32 %168, i32* %3, align 4
  br label %263

169:                                              ; preds = %154
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %171 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %180 = call i32 @SSL_get_wbio(%struct.TYPE_28__* %179)
  %181 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY, align 4
  %182 = call i32 @BIO_ctrl(i32 %180, i32 %181, i32 0, i32* null)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %185 = load i32, i32* @SSL3_CC_WRITE, align 4
  %186 = call i32 @dtls1_reset_seq_numbers(%struct.TYPE_28__* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %169
  br label %261

188:                                              ; preds = %2
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @WORK_MORE_A, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %188
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %194 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %203 = call i32 @SSL_get_wbio(%struct.TYPE_28__* %202)
  %204 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY, align 4
  %205 = call i32 @BIO_ctrl(i32 %203, i32 %204, i32 0, i32* null)
  br label %206

206:                                              ; preds = %201, %196, %192, %188
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %208 = call i32 @statem_flush(%struct.TYPE_28__* %207)
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @WORK_MORE_B, align 4
  store i32 %211, i32* %3, align 4
  br label %263

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %214 = call i32 @SSL_IS_TLS13(%struct.TYPE_28__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %247

216:                                              ; preds = %212
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %218 = call i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_28__* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* @WORK_ERROR, align 4
  store i32 %221, i32* %3, align 4
  br label %263

222:                                              ; preds = %216
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %246

228:                                              ; preds = %222
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 0
  %235 = bitcast {}** %234 to i32 (%struct.TYPE_28__*, i32)**
  %236 = load i32 (%struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_28__*, i32)** %235, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %238 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %239 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %240 = or i32 %238, %239
  %241 = call i32 %236(%struct.TYPE_28__* %237, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %228
  %244 = load i32, i32* @WORK_ERROR, align 4
  store i32 %244, i32* %3, align 4
  br label %263

245:                                              ; preds = %228
  br label %246

246:                                              ; preds = %245, %222
  br label %247

247:                                              ; preds = %246, %212
  br label %261

248:                                              ; preds = %2
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %250 = call i32 @statem_flush(%struct.TYPE_28__* %249)
  %251 = icmp ne i32 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @WORK_MORE_A, align 4
  store i32 %253, i32* %3, align 4
  br label %263

254:                                              ; preds = %248
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %256 = call i32 @tls13_update_key(%struct.TYPE_28__* %255, i32 1)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* @WORK_ERROR, align 4
  store i32 %259, i32* %3, align 4
  br label %263

260:                                              ; preds = %254
  br label %261

261:                                              ; preds = %260, %247, %187, %104, %83, %72, %59, %58, %14
  %262 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %258, %252, %243, %220, %210, %167, %152, %102, %70, %48, %40
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @tls13_change_cipher_state(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @statem_flush(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_28__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @tls_client_key_exchange_post_work(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_28__*) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_28__*) #1

declare dso_local i32 @dtls1_reset_seq_numbers(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_28__*) #1

declare dso_local i32 @tls13_update_key(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
