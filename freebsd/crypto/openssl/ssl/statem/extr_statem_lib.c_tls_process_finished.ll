; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i64, %struct.TYPE_18__*, i32, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ENC_READ_STATE_VALID = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_FINISHED = common dso_local global i32 0, align 4
@SSL_R_NOT_ON_RECORD_BOUNDARY = common dso_local global i32 0, align 4
@SSL_R_GOT_A_FIN_BEFORE_A_CCS = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_DIGEST_CHECK_FAILED = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_APPLICATION = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_READ = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_finished(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32, i32* @ENC_READ_STATE_VALID, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %11
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = call i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_22__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %249

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 7
  %43 = call i64 @RECORD_LAYER_processed_read_pending(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %48 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %49 = load i32, i32* @SSL_R_NOT_ON_RECORD_BOUNDARY, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_22__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %249

52:                                               ; preds = %40, %36
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %66 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %67 = load i32, i32* @SSL_R_GOT_A_FIN_BEFORE_A_CCS, align 4
  %68 = call i32 @SSLfatal(%struct.TYPE_22__* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %69, i32* %3, align 4
  br label %249

70:                                               ; preds = %56, %52
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @PACKET_remaining(i32* %82)
  %84 = icmp ne i64 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %70
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %88 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %89 = load i32, i32* @SSL_R_BAD_DIGEST_LENGTH, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_22__* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %91, i32* %3, align 4
  br label %249

92:                                               ; preds = %70
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @PACKET_data(i32* %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @CRYPTO_memcmp(i32 %94, i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %107 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %108 = load i32, i32* @SSL_R_DIGEST_CHECK_FAILED, align 4
  %109 = call i32 @SSLfatal(%struct.TYPE_22__* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %110, i32* %3, align 4
  br label %249

111:                                              ; preds = %92
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %114 = icmp ule i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ossl_assert(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %120 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %121 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @SSLfatal(%struct.TYPE_22__* %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %124, i32* %3, align 4
  br label %249

125:                                              ; preds = %111
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @memcpy(i32 %135, i32 %141, i64 %142)
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i64 %144, i64* %148, align 8
  br label %168

149:                                              ; preds = %125
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @memcpy(i32 %154, i32 %160, i64 %161)
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  store i64 %163, i64* %167, align 8
  br label %168

168:                                              ; preds = %149, %130
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %247

172:                                              ; preds = %168
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %172
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %177
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %189, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %193 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  %194 = or i32 %192, %193
  %195 = call i32 %190(%struct.TYPE_22__* %191, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %183
  %198 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %198, i32* %3, align 4
  br label %249

199:                                              ; preds = %183, %177
  br label %246

200:                                              ; preds = %172
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 1
  %207 = load i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)** %206, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = call i32 %207(%struct.TYPE_22__* %208, i32 %211, i32 %214, i32 0, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %200
  %222 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %222, i32* %3, align 4
  br label %249

223:                                              ; preds = %200
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %229, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %232 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %233 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_READ, align 4
  %234 = or i32 %232, %233
  %235 = call i32 %230(%struct.TYPE_22__* %231, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %223
  %238 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %238, i32* %3, align 4
  br label %249

239:                                              ; preds = %223
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %241 = call i32 @tls_process_initial_server_flight(%struct.TYPE_22__* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %244, i32* %3, align 4
  br label %249

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245, %199
  br label %247

247:                                              ; preds = %246, %168
  %248 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %247, %243, %237, %221, %197, %118, %104, %85, %63, %45, %33
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_22__*) #1

declare dso_local i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_22__*) #1

declare dso_local i64 @RECORD_LAYER_processed_read_pending(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @CRYPTO_memcmp(i32, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @tls_process_initial_server_flight(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
