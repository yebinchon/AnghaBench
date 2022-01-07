; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_change_cipher_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_change_cipher_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_22__, i32, %struct.TYPE_23__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32*, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32 }

@tls13_change_cipher_state.client_early_traffic = internal constant [12 x i8] c"c e traffic\00", align 1
@tls13_change_cipher_state.client_handshake_traffic = internal constant [13 x i8] c"c hs traffic\00", align 1
@tls13_change_cipher_state.client_application_traffic = internal constant [13 x i8] c"c ap traffic\00", align 1
@tls13_change_cipher_state.server_handshake_traffic = internal constant [13 x i8] c"s hs traffic\00", align 1
@tls13_change_cipher_state.server_application_traffic = internal constant [13 x i8] c"s ap traffic\00", align 1
@tls13_change_cipher_state.exporter_master_secret = internal constant [11 x i8] c"exp master\00", align 1
@tls13_change_cipher_state.resumption_master_secret = internal constant [11 x i8] c"res master\00", align 1
@tls13_change_cipher_state.early_exporter_master_secret = internal constant [13 x i8] c"e exp master\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL3_CC_READ = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_CHANGE_CIPHER_STATE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_INVALID = common dso_local global i32 0, align 4
@SSL3_CC_CLIENT = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@SSL3_CC_SERVER = common dso_local global i32 0, align 4
@SSL3_CC_EARLY = common dso_local global i32 0, align 4
@CLIENT_EARLY_LABEL = common dso_local global i8* null, align 8
@SSL_R_BAD_HANDSHAKE_LENGTH = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i64 0, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_PSK = common dso_local global i32 0, align 4
@EARLY_EXPORTER_SECRET_LABEL = common dso_local global i8* null, align 8
@SSL3_CC_HANDSHAKE = common dso_local global i32 0, align 4
@CLIENT_HANDSHAKE_LABEL = common dso_local global i8* null, align 8
@CLIENT_APPLICATION_LABEL = common dso_local global i8* null, align 8
@SERVER_HANDSHAKE_LABEL = common dso_local global i8* null, align 8
@SERVER_APPLICATION_LABEL = common dso_local global i8* null, align 8
@EXPORTER_SECRET_LABEL = common dso_local global i8* null, align 8
@ENC_WRITE_STATE_WRITE_PLAIN_ALERTS = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_change_cipher_state(%struct.TYPE_25__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %6, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %30 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  store i8* %32, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SSL3_CC_READ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %2
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 23
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 23
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @EVP_CIPHER_CTX_reset(i32* %45)
  br label %63

47:                                               ; preds = %37
  %48 = call i8* (...) @EVP_CIPHER_CTX_new()
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 23
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 23
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %58 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %59 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @SSLfatal(%struct.TYPE_25__* %57, i32 %58, i32 %59, i32 %60)
  br label %503

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 23
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %13, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %5, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 21
  %72 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %71)
  br label %113

73:                                               ; preds = %2
  %74 = load i32, i32* @ENC_WRITE_STATE_INVALID, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 16
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 22
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 22
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @EVP_CIPHER_CTX_reset(i32* %85)
  br label %103

87:                                               ; preds = %73
  %88 = call i8* (...) @EVP_CIPHER_CTX_new()
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 22
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 22
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %99 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %100 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %101 = call i32 @SSLfatal(%struct.TYPE_25__* %97, i32 %98, i32 %99, i32 %100)
  br label %503

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 22
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %13, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %5, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 21
  %112 = call i32 @RECORD_LAYER_reset_write_sequence(i32* %111)
  br label %113

113:                                              ; preds = %103, %63
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SSL3_CC_CLIENT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @SSL3_CC_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @SSL3_CC_SERVER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %325

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @SSL3_CC_READ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %325

133:                                              ; preds = %128, %118
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @SSL3_CC_EARLY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %296

138:                                              ; preds = %133
  store i32* null, i32** %21, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 20
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = call %struct.TYPE_24__* @SSL_SESSION_get0_cipher(%struct.TYPE_19__* %141)
  store %struct.TYPE_24__* %142, %struct.TYPE_24__** %25, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %10, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @tls13_change_cipher_state.client_early_traffic, i64 0, i64 0), i8** %15, align 8
  store i64 11, i64* %16, align 8
  %146 = load i8*, i8** @CLIENT_EARLY_LABEL, align 8
  store i8* %146, i8** %12, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 18
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @BIO_get_mem_data(i32 %151, i8** %23)
  store i64 %152, i64* %22, align 8
  %153 = load i64, i64* %22, align 8
  %154 = icmp sle i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %138
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %158 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %159 = load i32, i32* @SSL_R_BAD_HANDSHAKE_LENGTH, align 4
  %160 = call i32 @SSLfatal(%struct.TYPE_25__* %156, i32 %157, i32 %158, i32 %159)
  br label %503

161:                                              ; preds = %138
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SSL_EARLY_DATA_CONNECTING, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %212

167:                                              ; preds = %161
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %167
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 20
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %212

180:                                              ; preds = %172
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 19
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = icmp ne %struct.TYPE_19__* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 19
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %188, %194
  br label %196

196:                                              ; preds = %185, %180
  %197 = phi i1 [ false, %180 ], [ %195, %185 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @ossl_assert(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %203 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %204 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %205 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %206 = call i32 @SSLfatal(%struct.TYPE_25__* %202, i32 %203, i32 %204, i32 %205)
  br label %503

207:                                              ; preds = %196
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 19
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %209, align 8
  %211 = call %struct.TYPE_24__* @SSL_SESSION_get0_cipher(%struct.TYPE_19__* %210)
  store %struct.TYPE_24__* %211, %struct.TYPE_24__** %25, align 8
  br label %212

212:                                              ; preds = %207, %172, %167, %161
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %214 = icmp eq %struct.TYPE_24__* %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %218 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %219 = load i32, i32* @SSL_R_BAD_PSK, align 4
  %220 = call i32 @SSLfatal(%struct.TYPE_25__* %216, i32 %217, i32 %218, i32 %219)
  br label %503

221:                                              ; preds = %212
  %222 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %222, i32** %21, align 8
  %223 = load i32*, i32** %21, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %227 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %228 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %229 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %230 = call i32 @SSLfatal(%struct.TYPE_25__* %226, i32 %227, i32 %228, i32 %229)
  br label %503

231:                                              ; preds = %221
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %233 = call i32 @SSL_CIPHER_get_cipher_nid(%struct.TYPE_24__* %232)
  %234 = call i32* @EVP_get_cipherbynid(i32 %233)
  store i32* %234, i32** %20, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32* @ssl_md(i32 %237)
  store i32* %238, i32** %19, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %256, label %241

241:                                              ; preds = %231
  %242 = load i32*, i32** %21, align 8
  %243 = load i32*, i32** %19, align 8
  %244 = call i32 @EVP_DigestInit_ex(i32* %242, i32* %243, i32* null)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load i32*, i32** %21, align 8
  %248 = load i8*, i8** %23, align 8
  %249 = load i64, i64* %22, align 8
  %250 = call i32 @EVP_DigestUpdate(i32* %247, i8* %248, i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load i32*, i32** %21, align 8
  %254 = call i32 @EVP_DigestFinal_ex(i32* %253, i8* %32, i32* %24)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %252, %246, %241, %231
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %258 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %259 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %260 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %261 = call i32 @SSLfatal(%struct.TYPE_25__* %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32*, i32** %21, align 8
  %263 = call i32 @EVP_MD_CTX_free(i32* %262)
  br label %503

264:                                              ; preds = %252
  %265 = load i32, i32* %24, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %17, align 8
  %267 = load i32*, i32** %21, align 8
  %268 = call i32 @EVP_MD_CTX_free(i32* %267)
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %270 = load i32*, i32** %19, align 8
  %271 = load i8*, i8** %10, align 8
  %272 = load i64, i64* %17, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = load i64, i64* %17, align 8
  %277 = call i32 @tls13_hkdf_expand(%struct.TYPE_25__* %269, i32* %270, i8* %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.early_exporter_master_secret, i64 0, i64 0), i32 12, i8* %32, i64 %272, i8* %275, i64 %276, i32 1)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %264
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %281 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %282 = load i32, i32* @SSL_F_TLS13_CHANGE_CIPHER_STATE, align 4
  %283 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %284 = call i32 @SSLfatal(%struct.TYPE_25__* %280, i32 %281, i32 %282, i32 %283)
  br label %503

285:                                              ; preds = %264
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %287 = load i8*, i8** @EARLY_EXPORTER_SECRET_LABEL, align 8
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 5
  %290 = load i8*, i8** %289, align 8
  %291 = load i64, i64* %17, align 8
  %292 = call i32 @ssl_log_secret(%struct.TYPE_25__* %286, i8* %287, i8* %290, i64 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %285
  br label %503

295:                                              ; preds = %285
  br label %324

296:                                              ; preds = %133
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* @SSL3_CC_HANDSHAKE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %296
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 6
  %304 = load i8*, i8** %303, align 8
  store i8* %304, i8** %10, align 8
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 7
  %307 = load i8*, i8** %306, align 8
  store i8* %307, i8** %11, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %309 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %308)
  %310 = call i64 @EVP_MD_size(i32* %309)
  store i64 %310, i64* %14, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_handshake_traffic, i64 0, i64 0), i8** %15, align 8
  store i64 12, i64* %16, align 8
  %311 = load i8*, i8** @CLIENT_HANDSHAKE_LABEL, align 8
  store i8* %311, i8** %12, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 8
  %314 = load i8*, i8** %313, align 8
  store i8* %314, i8** %9, align 8
  br label %323

315:                                              ; preds = %296
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 9
  %318 = load i8*, i8** %317, align 8
  store i8* %318, i8** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_application_traffic, i64 0, i64 0), i8** %15, align 8
  store i64 12, i64* %16, align 8
  %319 = load i8*, i8** @CLIENT_APPLICATION_LABEL, align 8
  store i8* %319, i8** %12, align 8
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 10
  %322 = load i8*, i8** %321, align 8
  store i8* %322, i8** %9, align 8
  br label %323

323:                                              ; preds = %315, %301
  br label %324

324:                                              ; preds = %323, %295
  br label %347

325:                                              ; preds = %128, %123
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* @SSL3_CC_HANDSHAKE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %341

330:                                              ; preds = %325
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 6
  %333 = load i8*, i8** %332, align 8
  store i8* %333, i8** %10, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 11
  %336 = load i8*, i8** %335, align 8
  store i8* %336, i8** %11, align 8
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %338 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %337)
  %339 = call i64 @EVP_MD_size(i32* %338)
  store i64 %339, i64* %14, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_handshake_traffic, i64 0, i64 0), i8** %15, align 8
  store i64 12, i64* %16, align 8
  %340 = load i8*, i8** @SERVER_HANDSHAKE_LABEL, align 8
  store i8* %340, i8** %12, align 8
  br label %346

341:                                              ; preds = %325
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 9
  %344 = load i8*, i8** %343, align 8
  store i8* %344, i8** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_application_traffic, i64 0, i64 0), i8** %15, align 8
  store i64 12, i64* %16, align 8
  %345 = load i8*, i8** @SERVER_APPLICATION_LABEL, align 8
  store i8* %345, i8** %12, align 8
  br label %346

346:                                              ; preds = %341, %330
  br label %347

347:                                              ; preds = %346, %324
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* @SSL3_CC_EARLY, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %371, label %352

352:                                              ; preds = %347
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %354 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %353)
  store i32* %354, i32** %19, align 8
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 18
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  store i32* %360, i32** %20, align 8
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %362 = call i32 @ssl3_digest_cached_records(%struct.TYPE_25__* %361, i32 1)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %352
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %366 = trunc i64 %31 to i32
  %367 = call i32 @ssl_handshake_hash(%struct.TYPE_25__* %365, i8* %32, i32 %366, i64* %17)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %364, %352
  br label %503

370:                                              ; preds = %364
  br label %371

371:                                              ; preds = %370, %347
  %372 = load i8*, i8** %15, align 8
  %373 = icmp eq i8* %372, getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_application_traffic, i64 0, i64 0)
  br i1 %373, label %374, label %380

374:                                              ; preds = %371
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 10
  %377 = load i8*, i8** %376, align 8
  %378 = load i64, i64* %17, align 8
  %379 = call i32 @memcpy(i8* %377, i8* %32, i64 %378)
  br label %380

380:                                              ; preds = %374, %371
  %381 = load i8*, i8** %15, align 8
  %382 = icmp eq i8* %381, getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_handshake_traffic, i64 0, i64 0)
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 8
  %386 = load i8*, i8** %385, align 8
  %387 = load i64, i64* %17, align 8
  %388 = call i32 @memcpy(i8* %386, i8* %32, i64 %387)
  br label %389

389:                                              ; preds = %383, %380
  %390 = load i8*, i8** %15, align 8
  %391 = icmp eq i8* %390, getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_application_traffic, i64 0, i64 0)
  br i1 %391, label %392, label %406

392:                                              ; preds = %389
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %395 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %394)
  %396 = load i8*, i8** %10, align 8
  %397 = load i64, i64* %17, align 8
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 12
  %400 = load i8*, i8** %399, align 8
  %401 = load i64, i64* %17, align 8
  %402 = call i32 @tls13_hkdf_expand(%struct.TYPE_25__* %393, i32* %395, i8* %396, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls13_change_cipher_state.resumption_master_secret, i64 0, i64 0), i32 10, i8* %32, i64 %397, i8* %400, i64 %401, i32 1)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %392
  br label %503

405:                                              ; preds = %392
  br label %406

406:                                              ; preds = %405, %389
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %408 = load i32, i32* %4, align 4
  %409 = load i32, i32* @SSL3_CC_WRITE, align 4
  %410 = and i32 %408, %409
  %411 = load i32*, i32** %19, align 8
  %412 = load i32*, i32** %20, align 8
  %413 = load i8*, i8** %10, align 8
  %414 = load i8*, i8** %9, align 8
  %415 = load i8*, i8** %15, align 8
  %416 = load i64, i64* %16, align 8
  %417 = load i8*, i8** %5, align 8
  %418 = load i32*, i32** %13, align 8
  %419 = call i32 @derive_secret_key_and_iv(%struct.TYPE_25__* %407, i32 %410, i32* %411, i32* %412, i8* %413, i8* %414, i8* %415, i64 %416, i8* %29, i8* %417, i32* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %406
  br label %503

422:                                              ; preds = %406
  %423 = load i8*, i8** %15, align 8
  %424 = icmp eq i8* %423, getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_application_traffic, i64 0, i64 0)
  br i1 %424, label %425, label %455

425:                                              ; preds = %422
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 13
  %428 = load i8*, i8** %427, align 8
  %429 = load i64, i64* %17, align 8
  %430 = call i32 @memcpy(i8* %428, i8* %29, i64 %429)
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %433 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %432)
  %434 = load i8*, i8** %10, align 8
  %435 = load i8*, i8** %9, align 8
  %436 = load i64, i64* %17, align 8
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 14
  %439 = load i8*, i8** %438, align 8
  %440 = load i64, i64* %17, align 8
  %441 = call i32 @tls13_hkdf_expand(%struct.TYPE_25__* %431, i32* %433, i8* %434, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls13_change_cipher_state.exporter_master_secret, i64 0, i64 0), i32 10, i8* %435, i64 %436, i8* %439, i64 %440, i32 1)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %425
  br label %503

444:                                              ; preds = %425
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %446 = load i8*, i8** @EXPORTER_SECRET_LABEL, align 8
  %447 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 14
  %449 = load i8*, i8** %448, align 8
  %450 = load i64, i64* %17, align 8
  %451 = call i32 @ssl_log_secret(%struct.TYPE_25__* %445, i8* %446, i8* %449, i64 %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %444
  br label %503

454:                                              ; preds = %444
  br label %465

455:                                              ; preds = %422
  %456 = load i8*, i8** %15, align 8
  %457 = icmp eq i8* %456, getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_application_traffic, i64 0, i64 0)
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %459, i32 0, i32 15
  %461 = load i8*, i8** %460, align 8
  %462 = load i64, i64* %17, align 8
  %463 = call i32 @memcpy(i8* %461, i8* %29, i64 %462)
  br label %464

464:                                              ; preds = %458, %455
  br label %465

465:                                              ; preds = %464, %454
  %466 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %467 = load i8*, i8** %12, align 8
  %468 = load i64, i64* %17, align 8
  %469 = call i32 @ssl_log_secret(%struct.TYPE_25__* %466, i8* %467, i8* %29, i64 %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %465
  br label %503

472:                                              ; preds = %465
  %473 = load i8*, i8** %11, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %484

475:                                              ; preds = %472
  %476 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %478 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %477)
  %479 = load i8*, i8** %11, align 8
  %480 = load i64, i64* %14, align 8
  %481 = call i32 @tls13_derive_finishedkey(%struct.TYPE_25__* %476, i32* %478, i8* %29, i8* %479, i64 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %475
  br label %503

484:                                              ; preds = %475, %472
  %485 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %485, i32 0, i32 17
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %497, label %489

489:                                              ; preds = %484
  %490 = load i8*, i8** %15, align 8
  %491 = icmp eq i8* %490, getelementptr inbounds ([12 x i8], [12 x i8]* @tls13_change_cipher_state.client_early_traffic, i64 0, i64 0)
  br i1 %491, label %492, label %497

492:                                              ; preds = %489
  %493 = load i32, i32* @ENC_WRITE_STATE_WRITE_PLAIN_ALERTS, align 4
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 16
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 0
  store i32 %493, i32* %496, align 8
  br label %502

497:                                              ; preds = %489, %484
  %498 = load i32, i32* @ENC_WRITE_STATE_VALID, align 4
  %499 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %499, i32 0, i32 16
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 0
  store i32 %498, i32* %501, align 8
  br label %502

502:                                              ; preds = %497, %492
  store i32 1, i32* %18, align 4
  br label %503

503:                                              ; preds = %502, %483, %471, %453, %443, %421, %404, %369, %294, %279, %256, %225, %215, %201, %155, %96, %56
  %504 = trunc i64 %27 to i32
  %505 = call i32 @OPENSSL_cleanse(i8* %29, i32 %504)
  %506 = load i32, i32* %18, align 4
  %507 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %507)
  ret i32 %506
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #2

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local i32 @RECORD_LAYER_reset_read_sequence(i32*) #2

declare dso_local i32 @RECORD_LAYER_reset_write_sequence(i32*) #2

declare dso_local %struct.TYPE_24__* @SSL_SESSION_get0_cipher(%struct.TYPE_19__*) #2

declare dso_local i64 @BIO_get_mem_data(i32, i8**) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32* @EVP_get_cipherbynid(i32) #2

declare dso_local i32 @SSL_CIPHER_get_cipher_nid(%struct.TYPE_24__*) #2

declare dso_local i32* @ssl_md(i32) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_25__*, i32*, i8*, i8*, i32, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @ssl_log_secret(%struct.TYPE_25__*, i8*, i8*, i64) #2

declare dso_local i64 @EVP_MD_size(i32*) #2

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_25__*) #2

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_25__*, i8*, i32, i64*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @derive_secret_key_and_iv(%struct.TYPE_25__*, i32, i32*, i32*, i8*, i8*, i8*, i64, i8*, i8*, i32*) #2

declare dso_local i32 @tls13_derive_finishedkey(%struct.TYPE_25__*, i32*, i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
