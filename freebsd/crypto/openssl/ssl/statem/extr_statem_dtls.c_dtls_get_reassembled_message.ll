; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_reassembled_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_reassembled_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i8*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, %struct.TYPE_22__, %struct.TYPE_21__*, i32, i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.hm_header_st = type { i64, i64, i64, i64 }

@DTLS1_HM_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i8* null, align 8
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CCS = common dso_local global i8 0, align 1
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_DTLS_GET_REASSEMBLED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@TLS_ST_OK = common dso_local global i64 0, align 8
@SSL3_MT_HELLO_REQUEST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i64*)* @dtls_get_reassembled_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls_get_reassembled_message(%struct.TYPE_25__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hm_header_st, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %225, %3
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = call i32 @dtls1_retrieve_buffered_fragment(%struct.TYPE_25__* %26, i64* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

40:                                               ; preds = %31
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)** %44, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %48 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %49 = call i32 %45(%struct.TYPE_25__* %46, i32 %47, i32* %15, i8* %23, i32 %48, i32 0, i64* %17)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i8*, i8** @SSL_READING, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

57:                                               ; preds = %40
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %110

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, i8* %23, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @SSL3_MT_CCS, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %71 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %72 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %73 = call i32 @SSLfatal(%struct.TYPE_25__* %69, i32 %70, i32 %71, i32 %72)
  br label %289

74:                                               ; preds = %61
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @memcpy(i64 %79, i8* %23, i64 %80)
  %82 = load i64, i64* %17, align 8
  %83 = sub i64 %82, 1
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 12
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 11
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 8
  %100 = load i64, i64* %17, align 8
  %101 = sub i64 %100, 1
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 11
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i64 %101, i64* %106, align 8
  %107 = load i64, i64* %17, align 8
  %108 = sub i64 %107, 1
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

110:                                              ; preds = %57
  %111 = load i64, i64* %17, align 8
  %112 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %111, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %118 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %119 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_25__* %116, i32 %117, i32 %118, i32 %119)
  br label %289

121:                                              ; preds = %110
  %122 = call i32 @dtls1_get_message_header(i8* %23, %struct.hm_header_st* %16)
  %123 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %10, align 8
  %125 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %11, align 8
  %127 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 10
  %132 = call i64 @RECORD_LAYER_get_rrec_length(i32* %131)
  %133 = icmp ugt i64 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %121
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %136 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %137 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %138 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %139 = call i32 @SSLfatal(%struct.TYPE_25__* %135, i32 %136, i32 %137, i32 %138)
  br label %289

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %142, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = call i32 @dtls1_process_out_of_seq_message(%struct.TYPE_25__* %150, %struct.hm_header_st* %16)
  %152 = load i32*, i32** %6, align 8
  store i32 %151, i32* %152, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

153:                                              ; preds = %140
  %154 = load i64, i64* %12, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %162 = call i32 @dtls1_reassemble_fragment(%struct.TYPE_25__* %161, %struct.hm_header_st* %16)
  %163 = load i32*, i32** %6, align 8
  store i32 %162, i32* %163, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

164:                                              ; preds = %156, %153
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %234, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %234

177:                                              ; preds = %169
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @TLS_ST_OK, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %234

184:                                              ; preds = %177
  %185 = getelementptr inbounds i8, i8* %23, i64 0
  %186 = load i8, i8* %185, align 16
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @SSL3_MT_HELLO_REQUEST, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %234

191:                                              ; preds = %184
  %192 = getelementptr inbounds i8, i8* %23, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %191
  %197 = getelementptr inbounds i8, i8* %23, i64 2
  %198 = load i8, i8* %197, align 2
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %196
  %202 = getelementptr inbounds i8, i8* %23, i64 3
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 6
  %209 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)** %208, align 8
  %210 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)* %209, null
  br i1 %210, label %211, label %225

211:                                              ; preds = %206
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 6
  %214 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)** %213, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %219 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %214(i32 0, i32 %217, i32 %218, i8* %23, i32 %219, %struct.TYPE_25__* %220, i32 %223)
  br label %225

225:                                              ; preds = %211, %206
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  br label %25

228:                                              ; preds = %201, %196, %191
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %230 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %231 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %232 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %233 = call i32 @SSLfatal(%struct.TYPE_25__* %229, i32 %230, i32 %231, i32 %232)
  br label %289

234:                                              ; preds = %184, %177, %169, %164
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %236 = call i32 @dtls1_preprocess_fragment(%struct.TYPE_25__* %235, %struct.hm_header_st* %16)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  br label %289

239:                                              ; preds = %234
  %240 = load i64, i64* %12, align 8
  %241 = icmp ugt i64 %240, 0
  br i1 %241, label %242, label %273

242:                                              ; preds = %239
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  store i8* %251, i8** %19, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = load i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)** %255, align 8
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %258 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %259 = load i8*, i8** %19, align 8
  %260 = load i64, i64* %11, align 8
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  %262 = load i64, i64* %12, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 %256(%struct.TYPE_25__* %257, i32 %258, i32* null, i8* %261, i32 %263, i32 0, i64* %17)
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %13, align 4
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %242
  %268 = load i8*, i8** @SSL_READING, align 8
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load i64*, i64** %7, align 8
  store i64 0, i64* %271, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

272:                                              ; preds = %242
  br label %274

273:                                              ; preds = %239
  store i64 0, i64* %17, align 8
  br label %274

274:                                              ; preds = %273, %272
  %275 = load i64, i64* %17, align 8
  %276 = load i64, i64* %12, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %274
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %280 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %281 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %282 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %283 = call i32 @SSLfatal(%struct.TYPE_25__* %279, i32 %280, i32 %281, i32 %282)
  br label %289

284:                                              ; preds = %274
  %285 = load i64, i64* %12, align 8
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  %288 = load i64*, i64** %7, align 8
  store i64 %285, i64* %288, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

289:                                              ; preds = %278, %238, %228, %134, %115, %68
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 0
  store i64 0, i64* %291, align 8
  %292 = load i64*, i64** %7, align 8
  store i64 0, i64* %292, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %293

293:                                              ; preds = %289, %284, %267, %160, %149, %74, %52, %34, %30
  %294 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %294)
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dtls1_retrieve_buffered_fragment(%struct.TYPE_25__*, i64*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i64, i8*, i64) #2

declare dso_local i32 @dtls1_get_message_header(i8*, %struct.hm_header_st*) #2

declare dso_local i64 @RECORD_LAYER_get_rrec_length(i32*) #2

declare dso_local i32 @dtls1_process_out_of_seq_message(%struct.TYPE_25__*, %struct.hm_header_st*) #2

declare dso_local i32 @dtls1_reassemble_fragment(%struct.TYPE_25__*, %struct.hm_header_st*) #2

declare dso_local i32 @dtls1_preprocess_fragment(%struct.TYPE_25__*, %struct.hm_header_st*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
