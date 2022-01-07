; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_early_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_early_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)*, i64, i64, i64, %struct.TYPE_18__, %struct.TYPE_19__*, i32*, %struct.TYPE_19__*, i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32*, i32* }

@PSK_MAX_IDENTITY_LEN = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@TLS1_3_VERSION = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA = common dso_local global i32 0, align 4
@SSL_R_BAD_PSK = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@PSK_MAX_PSK_LEN = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@__const.tls_construct_ctos_early_data.tls13_aes128gcmsha256_id = private unnamed_addr constant [2 x i8] c"\13\01", align 1
@SSL_EARLY_DATA_CONNECTING = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_R_INCONSISTENT_EARLY_DATA_SNI = common dso_local global i32 0, align 4
@SSL_R_INCONSISTENT_EARLY_DATA_ALPN = common dso_local global i32 0, align 4
@TLSEXT_TYPE_early_data = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_REJECTED = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_early_data(%struct.TYPE_20__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [2 x i8], align 1
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %28 = load i32, i32* @PSK_MAX_IDENTITY_LEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  store i32* null, i32** %18, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSL_HRR_PENDING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = call i32* @ssl_handshake_md(%struct.TYPE_20__* %39)
  store i32* %40, i32** %18, align 8
  br label %41

41:                                               ; preds = %38, %5
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 9
  %44 = load i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)*, i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 9
  %49 = load i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)*, i32 (%struct.TYPE_20__*, i32*, i8**, i64*, %struct.TYPE_19__**)** %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 %49(%struct.TYPE_20__* %50, i32* %51, i8** %14, i64* %15, %struct.TYPE_19__** %16)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TLS1_3_VERSION, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57, %46
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %65 = call i32 @SSL_SESSION_free(%struct.TYPE_19__* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %69 = load i32, i32* @SSL_R_BAD_PSK, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_20__* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

72:                                               ; preds = %57, %54, %41
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %74 = icmp eq %struct.TYPE_19__* %73, null
  br i1 %74, label %75, label %173

75:                                               ; preds = %72
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)*, i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)** %77, align 8
  %79 = icmp ne i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)* %78, null
  br i1 %79, label %80, label %173

80:                                               ; preds = %75
  %81 = load i32, i32* @PSK_MAX_PSK_LEN, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %20, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %85 = trunc i64 %30 to i32
  %86 = call i32 @memset(i8* %32, i32 0, i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)*, i64 (%struct.TYPE_20__*, i32*, i8*, i32, i8*, i32)** %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = sub i64 %30, 1
  %92 = trunc i64 %91 to i32
  %93 = trunc i64 %82 to i32
  %94 = call i64 %89(%struct.TYPE_20__* %90, i32* null, i8* %32, i32 %92, i8* %84, i32 %93)
  store i64 %94, i64* %22, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i32, i32* @PSK_MAX_PSK_LEN, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %80
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %102 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %103 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %104 = call i32 @SSLfatal(%struct.TYPE_20__* %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %169

106:                                              ; preds = %80
  %107 = load i64, i64* %22, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %167

109:                                              ; preds = %106
  %110 = bitcast [2 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tls_construct_ctos_early_data.tls13_aes128gcmsha256_id, i32 0, i32 0), i64 2, i1 false)
  %111 = call i64 @strlen(i8* %32)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* @PSK_MAX_IDENTITY_LEN, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %112, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %119 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %120 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %121 = call i32 @SSLfatal(%struct.TYPE_20__* %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %122, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %169

123:                                              ; preds = %109
  store i8* %32, i8** %14, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %126 = call i32* @SSL_CIPHER_find(%struct.TYPE_20__* %124, i8* %125)
  store i32* %126, i32** %24, align 8
  %127 = load i32*, i32** %24, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %131 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %132 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %133 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %134 = call i32 @SSLfatal(%struct.TYPE_20__* %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %135, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %169

136:                                              ; preds = %123
  %137 = call %struct.TYPE_19__* (...) @SSL_SESSION_new()
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %16, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %139 = icmp eq %struct.TYPE_19__* %138, null
  br i1 %139, label %155, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %142 = load i64, i64* %22, align 8
  %143 = call i32 @SSL_SESSION_set1_master_key(%struct.TYPE_19__* %141, i8* %84, i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %147 = load i32*, i32** %24, align 8
  %148 = call i32 @SSL_SESSION_set_cipher(%struct.TYPE_19__* %146, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %152 = load i64, i64* @TLS1_3_VERSION, align 8
  %153 = call i32 @SSL_SESSION_set_protocol_version(%struct.TYPE_19__* %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %150, %145, %140, %136
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %157 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %158 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %159 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %160 = call i32 @SSLfatal(%struct.TYPE_20__* %156, i32 %157, i32 %158, i32 %159)
  %161 = load i64, i64* %22, align 8
  %162 = call i32 @OPENSSL_cleanse(i8* %84, i64 %161)
  %163 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %163, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %169

164:                                              ; preds = %150
  %165 = load i64, i64* %22, align 8
  %166 = call i32 @OPENSSL_cleanse(i8* %84, i64 %165)
  br label %167

167:                                              ; preds = %164, %106
  br label %168

168:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  br label %169

169:                                              ; preds = %168, %155, %129, %116, %99
  %170 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %19, align 4
  switch i32 %171, label %393 [
    i32 0, label %172
  ]

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %75, %72
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = call i32 @SSL_SESSION_free(%struct.TYPE_19__* %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 8
  store %struct.TYPE_19__* %178, %struct.TYPE_19__** %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %182 = icmp ne %struct.TYPE_19__* %181, null
  br i1 %182, label %183, label %208

183:                                              ; preds = %173
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @OPENSSL_free(i32* %186)
  %188 = load i8*, i8** %14, align 8
  %189 = load i64, i64* %15, align 8
  %190 = call i32* @OPENSSL_memdup(i8* %188, i64 %189)
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 7
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 7
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %183
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %199 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %200 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %201 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %202 = call i32 @SSLfatal(%struct.TYPE_20__* %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %203, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

204:                                              ; preds = %183
  %205 = load i64, i64* %15, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %173
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SSL_EARLY_DATA_CONNECTING, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %231, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %214
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %224 = icmp eq %struct.TYPE_19__* %223, null
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %225, %222, %208
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 4
  store i64 0, i64* %233, align 8
  %234 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %234, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

235:                                              ; preds = %225, %214
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %235
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  br label %249

247:                                              ; preds = %235
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  br label %249

249:                                              ; preds = %247, %243
  %250 = phi %struct.TYPE_19__* [ %246, %243 ], [ %248, %247 ]
  store %struct.TYPE_19__* %250, %struct.TYPE_19__** %17, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 4
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %293

262:                                              ; preds = %249
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %285, label %268

268:                                              ; preds = %262
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %292

274:                                              ; preds = %268
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 4
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = call i64 @strcmp(i32* %278, i32* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %274, %262
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %287 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %288 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %289 = load i32, i32* @SSL_R_INCONSISTENT_EARLY_DATA_SNI, align 4
  %290 = call i32 @SSLfatal(%struct.TYPE_20__* %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %291, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

292:                                              ; preds = %274, %268
  br label %293

293:                                              ; preds = %292, %249
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %312

299:                                              ; preds = %293
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %312

305:                                              ; preds = %299
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %307 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %308 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %309 = load i32, i32* @SSL_R_INCONSISTENT_EARLY_DATA_ALPN, align 4
  %310 = call i32 @SSLfatal(%struct.TYPE_20__* %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %311, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

312:                                              ; preds = %299, %293
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %364

318:                                              ; preds = %312
  store i32 0, i32* %27, align 4
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @PACKET_buf_init(i32* %25, i32* %322, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %336, label %329

329:                                              ; preds = %318
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %331 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %332 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %333 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %334 = call i32 @SSLfatal(%struct.TYPE_20__* %330, i32 %331, i32 %332, i32 %333)
  %335 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %335, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

336:                                              ; preds = %318
  br label %337

337:                                              ; preds = %352, %336
  %338 = call i64 @PACKET_get_length_prefixed_1(i32* %25, i32* %26)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %337
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i64 @PACKET_equal(i32* %26, i32* %344, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %340
  store i32 1, i32* %27, align 4
  br label %353

352:                                              ; preds = %340
  br label %337

353:                                              ; preds = %351, %337
  %354 = load i32, i32* %27, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %363, label %356

356:                                              ; preds = %353
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %358 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %359 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %360 = load i32, i32* @SSL_R_INCONSISTENT_EARLY_DATA_ALPN, align 4
  %361 = call i32 @SSLfatal(%struct.TYPE_20__* %357, i32 %358, i32 %359, i32 %360)
  %362 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %362, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

363:                                              ; preds = %353
  br label %364

364:                                              ; preds = %363, %312
  %365 = load i32*, i32** %8, align 8
  %366 = load i32, i32* @TLSEXT_TYPE_early_data, align 4
  %367 = call i32 @WPACKET_put_bytes_u16(i32* %365, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %364
  %370 = load i32*, i32** %8, align 8
  %371 = call i32 @WPACKET_start_sub_packet_u16(i32* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = load i32*, i32** %8, align 8
  %375 = call i32 @WPACKET_close(i32* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %384, label %377

377:                                              ; preds = %373, %369, %364
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %379 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %380 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, align 4
  %381 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %382 = call i32 @SSLfatal(%struct.TYPE_20__* %378, i32 %379, i32 %380, i32 %381)
  %383 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %383, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

384:                                              ; preds = %373
  %385 = load i32, i32* @SSL_EARLY_DATA_REJECTED, align 4
  %386 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 1
  store i32 %385, i32* %388, align 4
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  store i32 1, i32* %391, align 8
  %392 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %392, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %393

393:                                              ; preds = %384, %377, %356, %329, %305, %285, %231, %197, %169, %63
  %394 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %394)
  %395 = load i32, i32* %6, align 4
  ret i32 %395
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_20__*) #2

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_19__*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @SSL_CIPHER_find(%struct.TYPE_20__*, i8*) #2

declare dso_local %struct.TYPE_19__* @SSL_SESSION_new(...) #2

declare dso_local i32 @SSL_SESSION_set1_master_key(%struct.TYPE_19__*, i8*, i64) #2

declare dso_local i32 @SSL_SESSION_set_cipher(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @SSL_SESSION_set_protocol_version(%struct.TYPE_19__*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @OPENSSL_free(i32*) #2

declare dso_local i32* @OPENSSL_memdup(i8*, i64) #2

declare dso_local i64 @strcmp(i32*, i32*) #2

declare dso_local i32 @PACKET_buf_init(i32*, i32*, i32) #2

declare dso_local i64 @PACKET_get_length_prefixed_1(i32*, i32*) #2

declare dso_local i64 @PACKET_equal(i32*, i32*, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #2

declare dso_local i32 @WPACKET_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
