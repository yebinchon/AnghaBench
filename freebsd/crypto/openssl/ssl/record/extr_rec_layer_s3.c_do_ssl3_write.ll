; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_do_ssl3_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_do_ssl3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i32, i64, i64 (%struct.TYPE_48__*, i32, i64, i32)*, i32, %struct.TYPE_45__, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)*, i32*, %struct.TYPE_46__*, %struct.TYPE_43__, i32, i32*, i32, %struct.TYPE_42__*, i32, i32* }
%struct.TYPE_45__ = type { i64, i64, i8*, i32, i64, i32* }
%struct.TYPE_46__ = type { i32 (%struct.TYPE_48__*)*, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i64, i32)*, i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i8*, i32)* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_42__ = type { i32, i64, i64 }

@SSL_MAX_PIPELINES = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DO_SSL3_WRITE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD = common dso_local global i64 0, align 8
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_GCM_MODE = common dso_local global i32 0, align 4
@EVP_GCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i32 0, align 4
@EVP_CCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_WRITE_PLAIN_ALERTS = common dso_local global i64 0, align 8
@SSL3_RT_ALERT = common dso_local global i32 0, align 4
@TLS_ST_CW_CLNT_HELLO = common dso_local global i64 0, align 8
@TLS1_VERSION = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@SSL_R_COMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL_RT_MAX_CIPHER_BLOCK_SIZE = common dso_local global i64 0, align 8
@SSL3_RT_HEADER = common dso_local global i32 0, align 4
@SSL3_RT_INNER_CONTENT_TYPE = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_ssl3_write(%struct.TYPE_48__* %0, i32 %1, i8* %2, i64* %3, i64 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_47__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i64, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8, align 1
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %52 = load i32, i32* @SSL_MAX_PIPELINES, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %16, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %17, align 8
  %56 = load i32, i32* @SSL_MAX_PIPELINES, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca %struct.TYPE_47__, i64 %57, align 16
  store i64 %57, i64* %18, align 8
  store i32 0, i32* %24, align 4
  store i64 0, i64* %25, align 8
  store i32 0, i32* %26, align 4
  store i64 0, i64* %27, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %33, align 8
  br label %59

59:                                               ; preds = %70, %7
  %60 = load i64, i64* %33, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %33, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %30, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %30, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %33, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %33, align 8
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %74, i32 0, i32 4
  %76 = call i64 @RECORD_LAYER_write_pending(%struct.TYPE_45__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %30, align 8
  %83 = load i64*, i64** %15, align 8
  %84 = call i32 @ssl3_write_pending(%struct.TYPE_48__* %79, i32 %80, i8* %81, i64 %82, i64* %83)
  store i32 %84, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

85:                                               ; preds = %73
  %86 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %86, i32 0, i32 13
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %93, i32 0, i32 8
  %95 = load %struct.TYPE_46__*, %struct.TYPE_46__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_48__*)*, i32 (%struct.TYPE_48__*)** %96, align 8
  %98 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %99 = call i32 %97(%struct.TYPE_48__* %98)
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %22, align 4
  store i32 %103, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %85
  %106 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @ssl3_setup_write_buffer(%struct.TYPE_48__* %113, i64 %114, i32 0)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i64, i64* %30, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

126:                                              ; preds = %122, %119
  %127 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %127, i32 0, i32 15
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %29, align 8
  %130 = load i32*, i32** %29, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %138, i32 0, i32 14
  %140 = load i32, i32* %139, align 8
  %141 = call i32* @EVP_MD_CTX_md(i32 %140)
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %137, %132, %126
  %144 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 0, i32 1
  store i32 %149, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %164

150:                                              ; preds = %137
  %151 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %151, i32 0, i32 14
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @EVP_MD_CTX_size(i32 %153)
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %159 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %160 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %161 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %162 = call i32 @SSLfatal(%struct.TYPE_48__* %158, i32 %159, i32 %160, i32 %161)
  br label %1011

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %143
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %214, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %214, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %171, i32 0, i32 13
  %173 = load %struct.TYPE_42__*, %struct.TYPE_42__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %170
  %178 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %178, i32 0, i32 13
  %180 = load %struct.TYPE_42__*, %struct.TYPE_42__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %177
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %184
  store i64 0, i64* %35, align 8
  %189 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @do_ssl3_write(%struct.TYPE_48__* %189, i32 %190, i8* %191, i64* %35, i64 1, i32 1, i64* %25)
  store i32 %192, i32* %36, align 4
  %193 = load i32, i32* %36, align 4
  %194 = icmp sle i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %1011

196:                                              ; preds = %188
  %197 = load i64, i64* %25, align 8
  %198 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %199 = load i64, i64* @SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD, align 8
  %200 = add i64 %198, %199
  %201 = icmp ugt i64 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %204 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %205 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %206 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %207 = call i32 @SSLfatal(%struct.TYPE_48__* %203, i32 %204, i32 %205, i32 %206)
  br label %1011

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %184, %177
  %210 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %210, i32 0, i32 13
  %212 = load %struct.TYPE_42__*, %struct.TYPE_42__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %214

214:                                              ; preds = %209, %170, %167, %164
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %246

217:                                              ; preds = %214
  %218 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32* %222, i32** %28, align 8
  %223 = load i32*, i32** %28, align 8
  %224 = load i64, i64* %27, align 8
  %225 = call i32 @SSL3_BUFFER_set_offset(i32* %223, i64 %224)
  %226 = getelementptr inbounds i32, i32* %55, i64 0
  %227 = load i32*, i32** %28, align 8
  %228 = call i64 @SSL3_BUFFER_get_buf(i32* %227)
  %229 = load i32*, i32** %28, align 8
  %230 = call i32 @SSL3_BUFFER_get_len(i32* %229)
  %231 = call i32 @WPACKET_init_static_len(i32* %226, i64 %228, i32 %230, i32 0)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %217
  %234 = getelementptr inbounds i32, i32* %55, i64 0
  %235 = load i64, i64* %27, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32 @WPACKET_allocate_bytes(i32* %234, i32 %236, i8** null)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %233, %217
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %241 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %242 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %243 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %244 = call i32 @SSLfatal(%struct.TYPE_48__* %240, i32 %241, i32 %242, i32 %243)
  br label %1011

245:                                              ; preds = %233
  store i64 1, i64* %32, align 8
  br label %322

246:                                              ; preds = %214
  %247 = load i64, i64* %25, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %278

249:                                              ; preds = %246
  %250 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32* %254, i32** %28, align 8
  %255 = getelementptr inbounds i32, i32* %55, i64 0
  %256 = load i32*, i32** %28, align 8
  %257 = call i64 @SSL3_BUFFER_get_buf(i32* %256)
  %258 = load i32*, i32** %28, align 8
  %259 = call i32 @SSL3_BUFFER_get_len(i32* %258)
  %260 = call i32 @WPACKET_init_static_len(i32* %255, i64 %257, i32 %259, i32 0)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %249
  %263 = getelementptr inbounds i32, i32* %55, i64 0
  %264 = load i32*, i32** %28, align 8
  %265 = call i64 @SSL3_BUFFER_get_offset(i32* %264)
  %266 = load i64, i64* %25, align 8
  %267 = add i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = call i32 @WPACKET_allocate_bytes(i32* %263, i32 %268, i8** null)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %262, %249
  %272 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %273 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %274 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %275 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %276 = call i32 @SSLfatal(%struct.TYPE_48__* %272, i32 %273, i32 %274, i32 %275)
  br label %1011

277:                                              ; preds = %262
  store i64 1, i64* %32, align 8
  br label %321

278:                                              ; preds = %246
  store i64 0, i64* %33, align 8
  br label %279

279:                                              ; preds = %317, %278
  %280 = load i64, i64* %33, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %320

283:                                              ; preds = %279
  %284 = load i64, i64* %33, align 8
  %285 = getelementptr inbounds i32, i32* %55, i64 %284
  store i32* %285, i32** %19, align 8
  %286 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 5
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* %33, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %28, align 8
  %292 = load i32*, i32** %28, align 8
  %293 = load i64, i64* %27, align 8
  %294 = call i32 @SSL3_BUFFER_set_offset(i32* %292, i64 %293)
  %295 = load i32*, i32** %19, align 8
  %296 = load i32*, i32** %28, align 8
  %297 = call i64 @SSL3_BUFFER_get_buf(i32* %296)
  %298 = load i32*, i32** %28, align 8
  %299 = call i32 @SSL3_BUFFER_get_len(i32* %298)
  %300 = call i32 @WPACKET_init_static_len(i32* %295, i64 %297, i32 %299, i32 0)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %283
  %303 = load i32*, i32** %19, align 8
  %304 = load i64, i64* %27, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @WPACKET_allocate_bytes(i32* %303, i32 %305, i8** null)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %302, %283
  %309 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %310 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %311 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %312 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %313 = call i32 @SSLfatal(%struct.TYPE_48__* %309, i32 %310, i32 %311, i32 %312)
  br label %1011

314:                                              ; preds = %302
  %315 = load i64, i64* %32, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %32, align 8
  br label %317

317:                                              ; preds = %314
  %318 = load i64, i64* %33, align 8
  %319 = add i64 %318, 1
  store i64 %319, i64* %33, align 8
  br label %279

320:                                              ; preds = %279
  br label %321

321:                                              ; preds = %320, %277
  br label %322

322:                                              ; preds = %321, %245
  %323 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %323, i32 0, i32 7
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %367

327:                                              ; preds = %322
  %328 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %329 = call i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_48__* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %367

331:                                              ; preds = %327
  %332 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %333 = call i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_48__* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %367, label %335

335:                                              ; preds = %331
  %336 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %336, i32 0, i32 7
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @EVP_CIPHER_CTX_mode(i32* %338)
  store i32 %339, i32* %37, align 4
  %340 = load i32, i32* %37, align 4
  %341 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %335
  %344 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %344, i32 0, i32 7
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %346)
  store i32 %347, i32* %26, align 4
  %348 = load i32, i32* %26, align 4
  %349 = icmp sle i32 %348, 1
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  store i32 0, i32* %26, align 4
  br label %351

351:                                              ; preds = %350, %343
  br label %366

352:                                              ; preds = %335
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* @EVP_CIPH_GCM_MODE, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = load i32, i32* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %357, i32* %26, align 4
  br label %365

358:                                              ; preds = %352
  %359 = load i32, i32* %37, align 4
  %360 = load i32, i32* @EVP_CIPH_CCM_MODE, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = load i32, i32* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %363, i32* %26, align 4
  br label %364

364:                                              ; preds = %362, %358
  br label %365

365:                                              ; preds = %364, %356
  br label %366

366:                                              ; preds = %365, %351
  br label %367

367:                                              ; preds = %366, %331, %327, %322
  store i64 0, i64* %30, align 8
  %368 = mul nuw i64 8, %57
  %369 = trunc i64 %368 to i32
  %370 = call i32 @memset(%struct.TYPE_47__* %58, i32 0, i32 %369)
  store i64 0, i64* %33, align 8
  br label %371

371:                                              ; preds = %747, %367
  %372 = load i64, i64* %33, align 8
  %373 = load i64, i64* %13, align 8
  %374 = icmp ult i64 %372, %373
  br i1 %374, label %375, label %750

375:                                              ; preds = %371
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @TLS1_3_VERSION, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %375
  %382 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %387

383:                                              ; preds = %375
  %384 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  br label %387

387:                                              ; preds = %383, %381
  %388 = phi i32 [ %382, %381 ], [ %386, %383 ]
  store i32 %388, i32* %38, align 4
  store i8* null, i8** %39, align 8
  %389 = load i64, i64* %33, align 8
  %390 = getelementptr inbounds i32, i32* %55, i64 %389
  store i32* %390, i32** %19, align 8
  %391 = load i64, i64* %33, align 8
  %392 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i64 %391
  store %struct.TYPE_47__* %392, %struct.TYPE_47__** %20, align 8
  %393 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %394 = call i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_48__* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %414

396:                                              ; preds = %387
  %397 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %397, i32 0, i32 7
  %399 = load i32*, i32** %398, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %414

401:                                              ; preds = %396
  %402 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @ENC_WRITE_STATE_WRITE_PLAIN_ALERTS, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %412, label %408

408:                                              ; preds = %401
  %409 = load i32, i32* %10, align 4
  %410 = load i32, i32* @SSL3_RT_ALERT, align 4
  %411 = icmp ne i32 %409, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %408, %401
  %413 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  store i32 %413, i32* %41, align 4
  br label %416

414:                                              ; preds = %408, %396, %387
  %415 = load i32, i32* %10, align 4
  store i32 %415, i32* %41, align 4
  br label %416

416:                                              ; preds = %414, %412
  %417 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %418 = load i32, i32* %41, align 4
  %419 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_47__* %417, i32 %418)
  %420 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %421 = call i64 @SSL_get_state(%struct.TYPE_48__* %420)
  %422 = load i64, i64* @TLS_ST_CW_CLNT_HELLO, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %442

424:                                              ; preds = %416
  %425 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %425, i32 0, i32 12
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %442, label %429

429:                                              ; preds = %424
  %430 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %431 = call i32 @TLS1_get_version(%struct.TYPE_48__* %430)
  %432 = load i32, i32* @TLS1_VERSION, align 4
  %433 = icmp ugt i32 %431, %432
  br i1 %433, label %434, label %442

434:                                              ; preds = %429
  %435 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @SSL_HRR_NONE, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %434
  %441 = load i32, i32* @TLS1_VERSION, align 4
  store i32 %441, i32* %38, align 4
  br label %442

442:                                              ; preds = %440, %434, %429, %424, %416
  %443 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %444 = load i32, i32* %38, align 4
  %445 = call i32 @SSL3_RECORD_set_rec_version(%struct.TYPE_47__* %443, i32 %444)
  %446 = load i64*, i64** %12, align 8
  %447 = load i64, i64* %33, align 8
  %448 = getelementptr inbounds i64, i64* %446, i64 %447
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %40, align 8
  %450 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %451 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %450, i32 0, i32 11
  %452 = load i32*, i32** %451, align 8
  %453 = icmp ne i32* %452, null
  br i1 %453, label %454, label %458

454:                                              ; preds = %442
  %455 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %456 = load i64, i64* %40, align 8
  %457 = add i64 %456, %455
  store i64 %457, i64* %40, align 8
  br label %458

458:                                              ; preds = %454, %442
  %459 = load i32*, i32** %19, align 8
  %460 = load i32, i32* %41, align 4
  %461 = call i32 @WPACKET_put_bytes_u8(i32* %459, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %488

463:                                              ; preds = %458
  %464 = load i32*, i32** %19, align 8
  %465 = load i32, i32* %38, align 4
  %466 = call i32 @WPACKET_put_bytes_u16(i32* %464, i32 %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %488

468:                                              ; preds = %463
  %469 = load i32*, i32** %19, align 8
  %470 = call i32 @WPACKET_start_sub_packet_u16(i32* %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %488

472:                                              ; preds = %468
  %473 = load i32, i32* %26, align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %472
  %476 = load i32*, i32** %19, align 8
  %477 = load i32, i32* %26, align 4
  %478 = call i32 @WPACKET_allocate_bytes(i32* %476, i32 %477, i8** null)
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %475, %472
  %481 = load i64, i64* %40, align 8
  %482 = icmp ugt i64 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %480
  %484 = load i32*, i32** %19, align 8
  %485 = load i64, i64* %40, align 8
  %486 = call i32 @WPACKET_reserve_bytes(i32* %484, i64 %485, i8** %39)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %483, %475, %468, %463, %458
  %489 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %490 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %491 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %492 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %493 = call i32 @SSLfatal(%struct.TYPE_48__* %489, i32 %490, i32 %491, i32 %492)
  br label %1011

494:                                              ; preds = %483, %480
  %495 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %496 = load i8*, i8** %39, align 8
  %497 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_47__* %495, i8* %496)
  %498 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %499 = load i64*, i64** %12, align 8
  %500 = load i64, i64* %33, align 8
  %501 = getelementptr inbounds i64, i64* %499, i64 %500
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @SSL3_RECORD_set_length(%struct.TYPE_47__* %498, i64 %502)
  %504 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %505 = load i8*, i8** %11, align 8
  %506 = load i64, i64* %30, align 8
  %507 = getelementptr inbounds i8, i8* %505, i64 %506
  %508 = call i32 @SSL3_RECORD_set_input(%struct.TYPE_47__* %504, i8* %507)
  %509 = load i64*, i64** %12, align 8
  %510 = load i64, i64* %33, align 8
  %511 = getelementptr inbounds i64, i64* %509, i64 %510
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* %30, align 8
  %514 = add i64 %513, %512
  store i64 %514, i64* %30, align 8
  %515 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %516 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %515, i32 0, i32 11
  %517 = load i32*, i32** %516, align 8
  %518 = icmp ne i32* %517, null
  br i1 %518, label %519, label %538

519:                                              ; preds = %494
  %520 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %521 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %522 = call i32 @ssl3_do_compress(%struct.TYPE_48__* %520, %struct.TYPE_47__* %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %519
  %525 = load i32*, i32** %19, align 8
  %526 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %527 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @WPACKET_allocate_bytes(i32* %525, i32 %528, i8** null)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %537, label %531

531:                                              ; preds = %524, %519
  %532 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %533 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %534 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %535 = load i32, i32* @SSL_R_COMPRESSION_FAILURE, align 4
  %536 = call i32 @SSLfatal(%struct.TYPE_48__* %532, i32 %533, i32 %534, i32 %535)
  br label %1011

537:                                              ; preds = %524
  br label %558

538:                                              ; preds = %494
  %539 = load i32*, i32** %19, align 8
  %540 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %541 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %544 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @WPACKET_memcpy(i32* %539, i32 %542, i32 %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %538
  %549 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %550 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %551 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %552 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %553 = call i32 @SSLfatal(%struct.TYPE_48__* %549, i32 %550, i32 %551, i32 %552)
  br label %1011

554:                                              ; preds = %538
  %555 = load i64, i64* %33, align 8
  %556 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i64 %555
  %557 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_47__* %556)
  br label %558

558:                                              ; preds = %554, %537
  %559 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %560 = call i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_48__* %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %686

562:                                              ; preds = %558
  %563 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %563, i32 0, i32 7
  %565 = load i32*, i32** %564, align 8
  %566 = icmp ne i32* %565, null
  br i1 %566, label %567, label %686

567:                                              ; preds = %562
  %568 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %569 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %568, i32 0, i32 9
  %570 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @ENC_WRITE_STATE_WRITE_PLAIN_ALERTS, align 8
  %573 = icmp ne i64 %571, %572
  br i1 %573, label %578, label %574

574:                                              ; preds = %567
  %575 = load i32, i32* %10, align 4
  %576 = load i32, i32* @SSL3_RT_ALERT, align 4
  %577 = icmp ne i32 %575, %576
  br i1 %577, label %578, label %686

578:                                              ; preds = %574, %567
  %579 = load i32*, i32** %19, align 8
  %580 = load i32, i32* %10, align 4
  %581 = call i32 @WPACKET_put_bytes_u8(i32* %579, i32 %580)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %589, label %583

583:                                              ; preds = %578
  %584 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %585 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %586 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %587 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %588 = call i32 @SSLfatal(%struct.TYPE_48__* %584, i32 %585, i32 %586, i32 %587)
  br label %1011

589:                                              ; preds = %578
  %590 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %591 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_47__* %590, i64 1)
  %592 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %593 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_48__* %592)
  store i64 %593, i64* %43, align 8
  %594 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %595 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_47__* %594)
  store i64 %595, i64* %42, align 8
  %596 = load i64, i64* %42, align 8
  %597 = load i64, i64* %43, align 8
  %598 = icmp ult i64 %596, %597
  br i1 %598, label %599, label %685

599:                                              ; preds = %589
  store i64 0, i64* %44, align 8
  %600 = load i64, i64* %43, align 8
  %601 = load i64, i64* %42, align 8
  %602 = sub i64 %600, %601
  store i64 %602, i64* %45, align 8
  %603 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %604 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %603, i32 0, i32 2
  %605 = load i64 (%struct.TYPE_48__*, i32, i64, i32)*, i64 (%struct.TYPE_48__*, i32, i64, i32)** %604, align 8
  %606 = icmp ne i64 (%struct.TYPE_48__*, i32, i64, i32)* %605, null
  br i1 %606, label %607, label %618

607:                                              ; preds = %599
  %608 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %609 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %608, i32 0, i32 2
  %610 = load i64 (%struct.TYPE_48__*, i32, i64, i32)*, i64 (%struct.TYPE_48__*, i32, i64, i32)** %609, align 8
  %611 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %612 = load i32, i32* %10, align 4
  %613 = load i64, i64* %42, align 8
  %614 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %615 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %614, i32 0, i32 10
  %616 = load i32, i32* %615, align 8
  %617 = call i64 %610(%struct.TYPE_48__* %611, i32 %612, i64 %613, i32 %616)
  store i64 %617, i64* %44, align 8
  br label %660

618:                                              ; preds = %599
  %619 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %620 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 8
  %622 = icmp sgt i32 %621, 0
  br i1 %622, label %623, label %659

623:                                              ; preds = %618
  %624 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %625 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 8
  %627 = sub nsw i32 %626, 1
  %628 = sext i32 %627 to i64
  store i64 %628, i64* %46, align 8
  %629 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %630 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %629, i32 0, i32 3
  %631 = load i32, i32* %630, align 8
  %632 = sext i32 %631 to i64
  %633 = load i64, i64* %46, align 8
  %634 = and i64 %632, %633
  %635 = icmp eq i64 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %623
  %637 = load i64, i64* %42, align 8
  %638 = load i64, i64* %46, align 8
  %639 = and i64 %637, %638
  store i64 %639, i64* %47, align 8
  br label %647

640:                                              ; preds = %623
  %641 = load i64, i64* %42, align 8
  %642 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %643 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %642, i32 0, i32 3
  %644 = load i32, i32* %643, align 8
  %645 = sext i32 %644 to i64
  %646 = urem i64 %641, %645
  store i64 %646, i64* %47, align 8
  br label %647

647:                                              ; preds = %640, %636
  %648 = load i64, i64* %47, align 8
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %647
  store i64 0, i64* %44, align 8
  br label %658

651:                                              ; preds = %647
  %652 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %653 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 8
  %655 = sext i32 %654 to i64
  %656 = load i64, i64* %47, align 8
  %657 = sub i64 %655, %656
  store i64 %657, i64* %44, align 8
  br label %658

658:                                              ; preds = %651, %650
  br label %659

659:                                              ; preds = %658, %618
  br label %660

660:                                              ; preds = %659, %607
  %661 = load i64, i64* %44, align 8
  %662 = icmp ugt i64 %661, 0
  br i1 %662, label %663, label %684

663:                                              ; preds = %660
  %664 = load i64, i64* %44, align 8
  %665 = load i64, i64* %45, align 8
  %666 = icmp ugt i64 %664, %665
  br i1 %666, label %667, label %669

667:                                              ; preds = %663
  %668 = load i64, i64* %45, align 8
  store i64 %668, i64* %44, align 8
  br label %669

669:                                              ; preds = %667, %663
  %670 = load i32*, i32** %19, align 8
  %671 = load i64, i64* %44, align 8
  %672 = call i32 @WPACKET_memset(i32* %670, i32 0, i64 %671)
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %680, label %674

674:                                              ; preds = %669
  %675 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %676 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %677 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %678 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %679 = call i32 @SSLfatal(%struct.TYPE_48__* %675, i32 %676, i32 %677, i32 %678)
  br label %1011

680:                                              ; preds = %669
  %681 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %682 = load i64, i64* %44, align 8
  %683 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_47__* %681, i64 %682)
  br label %684

684:                                              ; preds = %680, %660
  br label %685

685:                                              ; preds = %684, %589
  br label %686

686:                                              ; preds = %685, %574, %562, %558
  %687 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %688 = call i64 @SSL_WRITE_ETM(%struct.TYPE_48__* %687)
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %718, label %690

690:                                              ; preds = %686
  %691 = load i32, i32* %23, align 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %718

693:                                              ; preds = %690
  %694 = load i32*, i32** %19, align 8
  %695 = load i32, i32* %23, align 4
  %696 = call i32 @WPACKET_allocate_bytes(i32* %694, i32 %695, i8** %48)
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %711

698:                                              ; preds = %693
  %699 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %700 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %699, i32 0, i32 8
  %701 = load %struct.TYPE_46__*, %struct.TYPE_46__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %701, i32 0, i32 1
  %703 = load %struct.TYPE_44__*, %struct.TYPE_44__** %702, align 8
  %704 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %703, i32 0, i32 1
  %705 = load i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i8*, i32)*, i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i8*, i32)** %704, align 8
  %706 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %707 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %708 = load i8*, i8** %48, align 8
  %709 = call i32 %705(%struct.TYPE_48__* %706, %struct.TYPE_47__* %707, i8* %708, i32 1)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %717, label %711

711:                                              ; preds = %698, %693
  %712 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %713 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %714 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %715 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %716 = call i32 @SSLfatal(%struct.TYPE_48__* %712, i32 %713, i32 %714, i32 %715)
  br label %1011

717:                                              ; preds = %698
  br label %718

718:                                              ; preds = %717, %690, %686
  %719 = load i32*, i32** %19, align 8
  %720 = load i64, i64* @SSL_RT_MAX_CIPHER_BLOCK_SIZE, align 8
  %721 = call i32 @WPACKET_reserve_bytes(i32* %719, i64 %720, i8** null)
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %718
  %724 = load i32*, i32** %19, align 8
  %725 = call i32 @WPACKET_get_length(i32* %724, i64* %31)
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %733, label %727

727:                                              ; preds = %723, %718
  %728 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %729 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %730 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %731 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %732 = call i32 @SSLfatal(%struct.TYPE_48__* %728, i32 %729, i32 %730, i32 %731)
  br label %1011

733:                                              ; preds = %723
  %734 = load i32*, i32** %19, align 8
  %735 = call i64 @WPACKET_get_curr(i32* %734)
  %736 = load i64, i64* %31, align 8
  %737 = sub i64 %735, %736
  %738 = inttoptr i64 %737 to i8*
  store i8* %738, i8** %21, align 8
  %739 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %740 = load i8*, i8** %21, align 8
  %741 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_47__* %739, i8* %740)
  %742 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %743 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_47__* %742)
  %744 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %745 = load i64, i64* %31, align 8
  %746 = call i32 @SSL3_RECORD_set_length(%struct.TYPE_47__* %744, i64 %745)
  br label %747

747:                                              ; preds = %733
  %748 = load i64, i64* %33, align 8
  %749 = add i64 %748, 1
  store i64 %749, i64* %33, align 8
  br label %371

750:                                              ; preds = %371
  %751 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %752 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %751, i32 0, i32 9
  %753 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = load i64, i64* @ENC_WRITE_STATE_WRITE_PLAIN_ALERTS, align 8
  %756 = icmp eq i64 %754, %755
  br i1 %756, label %757, label %774

757:                                              ; preds = %750
  %758 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %759 = load i64, i64* %13, align 8
  %760 = call i32 @tls13_enc(%struct.TYPE_48__* %758, %struct.TYPE_47__* %58, i64 %759, i32 1)
  %761 = icmp slt i32 %760, 1
  br i1 %761, label %762, label %773

762:                                              ; preds = %757
  %763 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %764 = call i32 @ossl_statem_in_error(%struct.TYPE_48__* %763)
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %772, label %766

766:                                              ; preds = %762
  %767 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %768 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %769 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %770 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %771 = call i32 @SSLfatal(%struct.TYPE_48__* %767, i32 %768, i32 %769, i32 %770)
  br label %772

772:                                              ; preds = %766, %762
  br label %1011

773:                                              ; preds = %757
  br label %798

774:                                              ; preds = %750
  %775 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %776 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %775, i32 0, i32 8
  %777 = load %struct.TYPE_46__*, %struct.TYPE_46__** %776, align 8
  %778 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %777, i32 0, i32 1
  %779 = load %struct.TYPE_44__*, %struct.TYPE_44__** %778, align 8
  %780 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %779, i32 0, i32 0
  %781 = load i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i64, i32)*, i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i64, i32)** %780, align 8
  %782 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %783 = load i64, i64* %13, align 8
  %784 = call i32 %781(%struct.TYPE_48__* %782, %struct.TYPE_47__* %58, i64 %783, i32 1)
  %785 = icmp slt i32 %784, 1
  br i1 %785, label %786, label %797

786:                                              ; preds = %774
  %787 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %788 = call i32 @ossl_statem_in_error(%struct.TYPE_48__* %787)
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %796, label %790

790:                                              ; preds = %786
  %791 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %792 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %793 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %794 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %795 = call i32 @SSLfatal(%struct.TYPE_48__* %791, i32 %792, i32 %793, i32 %794)
  br label %796

796:                                              ; preds = %790, %786
  br label %1011

797:                                              ; preds = %774
  br label %798

798:                                              ; preds = %797, %773
  store i64 0, i64* %33, align 8
  br label %799

799:                                              ; preds = %985, %798
  %800 = load i64, i64* %33, align 8
  %801 = load i64, i64* %13, align 8
  %802 = icmp ult i64 %800, %801
  br i1 %802, label %803, label %988

803:                                              ; preds = %799
  %804 = load i64, i64* %33, align 8
  %805 = getelementptr inbounds i32, i32* %55, i64 %804
  store i32* %805, i32** %19, align 8
  %806 = load i64, i64* %33, align 8
  %807 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i64 %806
  store %struct.TYPE_47__* %807, %struct.TYPE_47__** %20, align 8
  %808 = load i32*, i32** %19, align 8
  %809 = call i32 @WPACKET_get_length(i32* %808, i64* %49)
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %836

811:                                              ; preds = %803
  %812 = load i64, i64* %49, align 8
  %813 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %814 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %813, i32 0, i32 0
  %815 = load i32, i32* %814, align 4
  %816 = sext i32 %815 to i64
  %817 = icmp ugt i64 %812, %816
  br i1 %817, label %836, label %818

818:                                              ; preds = %811
  %819 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %820 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %819, i32 0, i32 0
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  %823 = load i64, i64* %49, align 8
  %824 = icmp ugt i64 %822, %823
  br i1 %824, label %825, label %842

825:                                              ; preds = %818
  %826 = load i32*, i32** %19, align 8
  %827 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %828 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %827, i32 0, i32 0
  %829 = load i32, i32* %828, align 4
  %830 = sext i32 %829 to i64
  %831 = load i64, i64* %49, align 8
  %832 = sub i64 %830, %831
  %833 = trunc i64 %832 to i32
  %834 = call i32 @WPACKET_allocate_bytes(i32* %826, i32 %833, i8** null)
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %842, label %836

836:                                              ; preds = %825, %811, %803
  %837 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %838 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %839 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %840 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %841 = call i32 @SSLfatal(%struct.TYPE_48__* %837, i32 %838, i32 %839, i32 %840)
  br label %1011

842:                                              ; preds = %825, %818
  %843 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %844 = call i64 @SSL_WRITE_ETM(%struct.TYPE_48__* %843)
  %845 = icmp ne i64 %844, 0
  br i1 %845, label %846, label %878

846:                                              ; preds = %842
  %847 = load i32, i32* %23, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %878

849:                                              ; preds = %846
  %850 = load i32*, i32** %19, align 8
  %851 = load i32, i32* %23, align 4
  %852 = call i32 @WPACKET_allocate_bytes(i32* %850, i32 %851, i8** %50)
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %867

854:                                              ; preds = %849
  %855 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %856 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %855, i32 0, i32 8
  %857 = load %struct.TYPE_46__*, %struct.TYPE_46__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %857, i32 0, i32 1
  %859 = load %struct.TYPE_44__*, %struct.TYPE_44__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %859, i32 0, i32 1
  %861 = load i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i8*, i32)*, i32 (%struct.TYPE_48__*, %struct.TYPE_47__*, i8*, i32)** %860, align 8
  %862 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %863 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %864 = load i8*, i8** %50, align 8
  %865 = call i32 %861(%struct.TYPE_48__* %862, %struct.TYPE_47__* %863, i8* %864, i32 1)
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %873, label %867

867:                                              ; preds = %854, %849
  %868 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %869 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %870 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %871 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %872 = call i32 @SSLfatal(%struct.TYPE_48__* %868, i32 %869, i32 %870, i32 %871)
  br label %1011

873:                                              ; preds = %854
  %874 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %875 = load i32, i32* %23, align 4
  %876 = sext i32 %875 to i64
  %877 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_47__* %874, i64 %876)
  br label %878

878:                                              ; preds = %873, %846, %842
  %879 = load i32*, i32** %19, align 8
  %880 = call i32 @WPACKET_get_length(i32* %879, i64* %31)
  %881 = icmp ne i32 %880, 0
  br i1 %881, label %882, label %886

882:                                              ; preds = %878
  %883 = load i32*, i32** %19, align 8
  %884 = call i32 @WPACKET_close(i32* %883)
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %892, label %886

886:                                              ; preds = %882, %878
  %887 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %888 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %889 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %890 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %891 = call i32 @SSLfatal(%struct.TYPE_48__* %887, i32 %888, i32 %889, i32 %890)
  br label %1011

892:                                              ; preds = %882
  %893 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %894 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %893, i32 0, i32 6
  %895 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)** %894, align 8
  %896 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)* %895, null
  br i1 %896, label %897, label %941

897:                                              ; preds = %892
  %898 = load i32*, i32** %19, align 8
  %899 = call i64 @WPACKET_get_curr(i32* %898)
  %900 = load i64, i64* %31, align 8
  %901 = sub i64 %899, %900
  %902 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %903 = sub i64 %901, %902
  %904 = inttoptr i64 %903 to i8*
  store i8* %904, i8** %21, align 8
  %905 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %906 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %905, i32 0, i32 6
  %907 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)** %906, align 8
  %908 = load i32, i32* @SSL3_RT_HEADER, align 4
  %909 = load i8*, i8** %21, align 8
  %910 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %911 = trunc i64 %910 to i32
  %912 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %913 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %914 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %913, i32 0, i32 5
  %915 = load i32, i32* %914, align 8
  %916 = call i32 %907(i32 1, i32 0, i32 %908, i8* %909, i32 %911, %struct.TYPE_48__* %912, i32 %915)
  %917 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %918 = call i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_48__* %917)
  %919 = icmp ne i64 %918, 0
  br i1 %919, label %920, label %940

920:                                              ; preds = %897
  %921 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %922 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %921, i32 0, i32 7
  %923 = load i32*, i32** %922, align 8
  %924 = icmp ne i32* %923, null
  br i1 %924, label %925, label %940

925:                                              ; preds = %920
  %926 = load i32, i32* %10, align 4
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %51, align 1
  %928 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %929 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %928, i32 0, i32 6
  %930 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_48__*, i32)** %929, align 8
  %931 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %932 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 8
  %934 = load i32, i32* @SSL3_RT_INNER_CONTENT_TYPE, align 4
  %935 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %936 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %937 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %936, i32 0, i32 5
  %938 = load i32, i32* %937, align 8
  %939 = call i32 %930(i32 1, i32 %933, i32 %934, i8* %51, i32 1, %struct.TYPE_48__* %935, i32 %938)
  br label %940

940:                                              ; preds = %925, %920, %897
  br label %941

941:                                              ; preds = %940, %892
  %942 = load i32*, i32** %19, align 8
  %943 = call i32 @WPACKET_finish(i32* %942)
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %951, label %945

945:                                              ; preds = %941
  %946 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %947 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %948 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %949 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %950 = call i32 @SSLfatal(%struct.TYPE_48__* %946, i32 %947, i32 %948, i32 %949)
  br label %1011

951:                                              ; preds = %941
  %952 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %953 = load i32, i32* %10, align 4
  %954 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_47__* %952, i32 %953)
  %955 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %956 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %957 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_47__* %955, i64 %956)
  %958 = load i32, i32* %14, align 4
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %960, label %973

960:                                              ; preds = %951
  %961 = load i64, i64* %33, align 8
  %962 = icmp ugt i64 %961, 0
  br i1 %962, label %963, label %969

963:                                              ; preds = %960
  %964 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %965 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %966 = load i32, i32* @SSL_F_DO_SSL3_WRITE, align 4
  %967 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %968 = call i32 @SSLfatal(%struct.TYPE_48__* %964, i32 %965, i32 %966, i32 %967)
  br label %1011

969:                                              ; preds = %960
  %970 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %971 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_47__* %970)
  %972 = load i64*, i64** %15, align 8
  store i64 %971, i64* %972, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

973:                                              ; preds = %951
  %974 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %975 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %974, i32 0, i32 4
  %976 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %975, i32 0, i32 5
  %977 = load i32*, i32** %976, align 8
  %978 = load i64, i64* %33, align 8
  %979 = getelementptr inbounds i32, i32* %977, i64 %978
  %980 = load i64, i64* %25, align 8
  %981 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %982 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_47__* %981)
  %983 = add i64 %980, %982
  %984 = call i32 @SSL3_BUFFER_set_left(i32* %979, i64 %983)
  br label %985

985:                                              ; preds = %973
  %986 = load i64, i64* %33, align 8
  %987 = add i64 %986, 1
  store i64 %987, i64* %33, align 8
  br label %799

988:                                              ; preds = %799
  %989 = load i64, i64* %30, align 8
  %990 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %991 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %990, i32 0, i32 4
  %992 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %991, i32 0, i32 1
  store i64 %989, i64* %992, align 8
  %993 = load i8*, i8** %11, align 8
  %994 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %995 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %994, i32 0, i32 4
  %996 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %995, i32 0, i32 2
  store i8* %993, i8** %996, align 8
  %997 = load i32, i32* %10, align 4
  %998 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %999 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %998, i32 0, i32 4
  %1000 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %999, i32 0, i32 3
  store i32 %997, i32* %1000, align 8
  %1001 = load i64, i64* %30, align 8
  %1002 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %1003 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1002, i32 0, i32 4
  %1004 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1003, i32 0, i32 4
  store i64 %1001, i64* %1004, align 8
  %1005 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %1006 = load i32, i32* %10, align 4
  %1007 = load i8*, i8** %11, align 8
  %1008 = load i64, i64* %30, align 8
  %1009 = load i64*, i64** %15, align 8
  %1010 = call i32 @ssl3_write_pending(%struct.TYPE_48__* %1005, i32 %1006, i8* %1007, i64 %1008, i64* %1009)
  store i32 %1010, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

1011:                                             ; preds = %963, %945, %886, %867, %836, %796, %772, %727, %711, %674, %583, %548, %531, %488, %308, %271, %239, %202, %195, %157
  store i64 0, i64* %33, align 8
  br label %1012

1012:                                             ; preds = %1020, %1011
  %1013 = load i64, i64* %33, align 8
  %1014 = load i64, i64* %32, align 8
  %1015 = icmp ult i64 %1013, %1014
  br i1 %1015, label %1016, label %1023

1016:                                             ; preds = %1012
  %1017 = load i64, i64* %33, align 8
  %1018 = getelementptr inbounds i32, i32* %55, i64 %1017
  %1019 = call i32 @WPACKET_cleanup(i32* %1018)
  br label %1020

1020:                                             ; preds = %1016
  %1021 = load i64, i64* %33, align 8
  %1022 = add i64 %1021, 1
  store i64 %1022, i64* %33, align 8
  br label %1012

1023:                                             ; preds = %1012
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %34, align 4
  br label %1024

1024:                                             ; preds = %1023, %988, %969, %125, %117, %102, %78
  %1025 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %1025)
  %1026 = load i32, i32* %8, align 4
  ret i32 %1026
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RECORD_LAYER_write_pending(%struct.TYPE_45__*) #2

declare dso_local i32 @ssl3_write_pending(%struct.TYPE_48__*, i32, i8*, i64, i64*) #2

declare dso_local i32 @ssl3_setup_write_buffer(%struct.TYPE_48__*, i64, i32) #2

declare dso_local i32* @EVP_MD_CTX_md(i32) #2

declare dso_local i32 @EVP_MD_CTX_size(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_48__*, i32, i32, i32) #2

declare dso_local i32 @SSL3_BUFFER_set_offset(i32*, i64) #2

declare dso_local i32 @WPACKET_init_static_len(i32*, i64, i32, i32) #2

declare dso_local i64 @SSL3_BUFFER_get_buf(i32*) #2

declare dso_local i32 @SSL3_BUFFER_get_len(i32*) #2

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i32, i8**) #2

declare dso_local i64 @SSL3_BUFFER_get_offset(i32*) #2

declare dso_local i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_48__*) #2

declare dso_local i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_48__*) #2

declare dso_local i32 @EVP_CIPHER_CTX_mode(i32*) #2

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i32 @memset(%struct.TYPE_47__*, i32, i32) #2

declare dso_local i32 @SSL3_RECORD_set_type(%struct.TYPE_47__*, i32) #2

declare dso_local i64 @SSL_get_state(%struct.TYPE_48__*) #2

declare dso_local i32 @TLS1_get_version(%struct.TYPE_48__*) #2

declare dso_local i32 @SSL3_RECORD_set_rec_version(%struct.TYPE_47__*, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #2

declare dso_local i32 @WPACKET_reserve_bytes(i32*, i64, i8**) #2

declare dso_local i32 @SSL3_RECORD_set_data(%struct.TYPE_47__*, i8*) #2

declare dso_local i32 @SSL3_RECORD_set_length(%struct.TYPE_47__*, i64) #2

declare dso_local i32 @SSL3_RECORD_set_input(%struct.TYPE_47__*, i8*) #2

declare dso_local i32 @ssl3_do_compress(%struct.TYPE_48__*, %struct.TYPE_47__*) #2

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i32) #2

declare dso_local i32 @SSL3_RECORD_reset_input(%struct.TYPE_47__*) #2

declare dso_local i32 @SSL3_RECORD_add_length(%struct.TYPE_47__*, i64) #2

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_48__*) #2

declare dso_local i64 @SSL3_RECORD_get_length(%struct.TYPE_47__*) #2

declare dso_local i32 @WPACKET_memset(i32*, i32, i64) #2

declare dso_local i64 @SSL_WRITE_ETM(%struct.TYPE_48__*) #2

declare dso_local i32 @WPACKET_get_length(i32*, i64*) #2

declare dso_local i64 @WPACKET_get_curr(i32*) #2

declare dso_local i32 @tls13_enc(%struct.TYPE_48__*, %struct.TYPE_47__*, i64, i32) #2

declare dso_local i32 @ossl_statem_in_error(%struct.TYPE_48__*) #2

declare dso_local i32 @WPACKET_close(i32*) #2

declare dso_local i32 @WPACKET_finish(i32*) #2

declare dso_local i32 @SSL3_BUFFER_set_left(i32*, i64) #2

declare dso_local i32 @WPACKET_cleanup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
