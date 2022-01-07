; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhs.c_input_kex_ecdh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhs.c_input_kex_ecdh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i64, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)*, i32 }
%struct.sshkey = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_NO_HOSTKEY_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid client public key\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_ECDH_REPLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_ecdh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_ecdh_init(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sshkey*, align 8
  %14 = alloca %struct.sshkey*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %25 = load %struct.ssh*, %struct.ssh** %6, align 8
  %26 = getelementptr inbounds %struct.ssh, %struct.ssh* %25, i32 0, i32 1
  %27 = load %struct.kex*, %struct.kex** %26, align 8
  store %struct.kex* %27, %struct.kex** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %28 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %18, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  store i64 0, i64* %22, align 8
  %32 = load %struct.kex*, %struct.kex** %7, align 8
  %33 = getelementptr inbounds %struct.kex, %struct.kex* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @EC_KEY_new_by_curve_name(i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %38, i32* %24, align 4
  br label %272

39:                                               ; preds = %3
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @EC_KEY_generate_key(i32* %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %44, i32* %24, align 4
  br label %272

45:                                               ; preds = %39
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @EC_KEY_get0_group(i32* %46)
  store i32* %47, i32** %10, align 8
  %48 = load %struct.kex*, %struct.kex** %7, align 8
  %49 = getelementptr inbounds %struct.kex, %struct.kex* %48, i32 0, i32 13
  %50 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %49, align 8
  %51 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.kex*, %struct.kex** %7, align 8
  %54 = getelementptr inbounds %struct.kex, %struct.kex* %53, i32 0, i32 12
  %55 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %54, align 8
  %56 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %45
  %58 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %58, i32* %24, align 4
  br label %272

59:                                               ; preds = %52
  %60 = load %struct.kex*, %struct.kex** %7, align 8
  %61 = getelementptr inbounds %struct.kex, %struct.kex* %60, i32 0, i32 13
  %62 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %61, align 8
  %63 = load %struct.kex*, %struct.kex** %7, align 8
  %64 = getelementptr inbounds %struct.kex, %struct.kex* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.kex*, %struct.kex** %7, align 8
  %67 = getelementptr inbounds %struct.kex, %struct.kex* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ssh*, %struct.ssh** %6, align 8
  %70 = call %struct.sshkey* %62(i32 %65, i32 %68, %struct.ssh* %69)
  store %struct.sshkey* %70, %struct.sshkey** %14, align 8
  %71 = load %struct.kex*, %struct.kex** %7, align 8
  %72 = getelementptr inbounds %struct.kex, %struct.kex* %71, i32 0, i32 12
  %73 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %72, align 8
  %74 = load %struct.kex*, %struct.kex** %7, align 8
  %75 = getelementptr inbounds %struct.kex, %struct.kex* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.kex*, %struct.kex** %7, align 8
  %78 = getelementptr inbounds %struct.kex, %struct.kex* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ssh*, %struct.ssh** %6, align 8
  %81 = call %struct.sshkey* %73(i32 %76, i32 %79, %struct.ssh* %80)
  store %struct.sshkey* %81, %struct.sshkey** %13, align 8
  %82 = load %struct.sshkey*, %struct.sshkey** %14, align 8
  %83 = icmp eq %struct.sshkey* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i32, i32* @SSH_ERR_NO_HOSTKEY_LOADED, align 4
  store i32 %85, i32* %24, align 4
  br label %272

86:                                               ; preds = %59
  %87 = load i32*, i32** %10, align 8
  %88 = call i32* @EC_POINT_new(i32* %87)
  store i32* %88, i32** %8, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %91, i32* %24, align 4
  br label %272

92:                                               ; preds = %86
  %93 = load %struct.ssh*, %struct.ssh** %6, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @sshpkt_get_ec(%struct.ssh* %93, i32* %94, i32* %95)
  store i32 %96, i32* %24, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load %struct.ssh*, %struct.ssh** %6, align 8
  %100 = call i32 @sshpkt_get_end(%struct.ssh* %99)
  store i32 %100, i32* %24, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %92
  br label %272

103:                                              ; preds = %98
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i64 @sshkey_ec_validate_public(i32* %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.ssh*, %struct.ssh** %6, align 8
  %110 = call i32 @sshpkt_disconnect(%struct.ssh* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %111, i32* %24, align 4
  br label %272

112:                                              ; preds = %103
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @EC_GROUP_get_degree(i32* %113)
  %115 = add nsw i32 %114, 7
  %116 = sdiv i32 %115, 8
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %22, align 8
  %118 = load i64, i64* %22, align 8
  %119 = call i8* @malloc(i64 %118)
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %17, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %112
  %123 = call i32* (...) @BN_new()
  store i32* %123, i32** %12, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %122, %112
  %126 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %126, i32* %24, align 4
  br label %272

127:                                              ; preds = %122
  %128 = load i32*, i32** %17, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @ECDH_compute_key(i32* %128, i64 %129, i32* %130, i32* %131, i32* null)
  %133 = load i64, i64* %22, align 8
  %134 = trunc i64 %133 to i32
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %127
  %137 = load i32*, i32** %17, align 8
  %138 = load i64, i64* %22, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = call i32* @BN_bin2bn(i32* %137, i64 %138, i32* %139)
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %136, %127
  %143 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %143, i32* %24, align 4
  br label %272

144:                                              ; preds = %136
  %145 = load %struct.sshkey*, %struct.sshkey** %14, align 8
  %146 = call i32 @sshkey_to_blob(%struct.sshkey* %145, i32** %15, i64* %21)
  store i32 %146, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %272

149:                                              ; preds = %144
  %150 = mul nuw i64 4, %29
  store i64 %150, i64* %23, align 8
  %151 = load %struct.kex*, %struct.kex** %7, align 8
  %152 = getelementptr inbounds %struct.kex, %struct.kex* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load %struct.kex*, %struct.kex** %7, align 8
  %156 = getelementptr inbounds %struct.kex, %struct.kex* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.kex*, %struct.kex** %7, align 8
  %159 = getelementptr inbounds %struct.kex, %struct.kex* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.kex*, %struct.kex** %7, align 8
  %162 = getelementptr inbounds %struct.kex, %struct.kex* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @sshbuf_ptr(i32 %163)
  %165 = load %struct.kex*, %struct.kex** %7, align 8
  %166 = getelementptr inbounds %struct.kex, %struct.kex* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @sshbuf_len(i32 %167)
  %169 = load %struct.kex*, %struct.kex** %7, align 8
  %170 = getelementptr inbounds %struct.kex, %struct.kex* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @sshbuf_ptr(i32 %171)
  %173 = load %struct.kex*, %struct.kex** %7, align 8
  %174 = getelementptr inbounds %struct.kex, %struct.kex* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @sshbuf_len(i32 %175)
  %177 = load i32*, i32** %15, align 8
  %178 = load i64, i64* %21, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = call i32* @EC_KEY_get0_public_key(i32* %180)
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @kex_ecdh_hash(i32 %153, i32* %154, i32 %157, i32 %160, i32 %164, i32 %168, i32 %172, i32 %176, i32* %177, i64 %178, i32* %179, i32* %181, i32* %182, i32* %31, i64* %23)
  store i32 %183, i32* %24, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %149
  br label %272

186:                                              ; preds = %149
  %187 = load %struct.kex*, %struct.kex** %7, align 8
  %188 = getelementptr inbounds %struct.kex, %struct.kex* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %216

191:                                              ; preds = %186
  %192 = load i64, i64* %23, align 8
  %193 = load %struct.kex*, %struct.kex** %7, align 8
  %194 = getelementptr inbounds %struct.kex, %struct.kex* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.kex*, %struct.kex** %7, align 8
  %196 = getelementptr inbounds %struct.kex, %struct.kex* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @malloc(i64 %197)
  %199 = bitcast i8* %198 to i32*
  %200 = load %struct.kex*, %struct.kex** %7, align 8
  %201 = getelementptr inbounds %struct.kex, %struct.kex* %200, i32 0, i32 4
  store i32* %199, i32** %201, align 8
  %202 = load %struct.kex*, %struct.kex** %7, align 8
  %203 = getelementptr inbounds %struct.kex, %struct.kex* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %191
  %207 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %207, i32* %24, align 4
  br label %272

208:                                              ; preds = %191
  %209 = load %struct.kex*, %struct.kex** %7, align 8
  %210 = getelementptr inbounds %struct.kex, %struct.kex* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.kex*, %struct.kex** %7, align 8
  %213 = getelementptr inbounds %struct.kex, %struct.kex* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @memcpy(i32* %211, i32* %31, i64 %214)
  br label %216

216:                                              ; preds = %208, %186
  %217 = load %struct.kex*, %struct.kex** %7, align 8
  %218 = getelementptr inbounds %struct.kex, %struct.kex* %217, i32 0, i32 1
  %219 = load i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)** %218, align 8
  %220 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %221 = load %struct.sshkey*, %struct.sshkey** %14, align 8
  %222 = load i64, i64* %23, align 8
  %223 = load %struct.kex*, %struct.kex** %7, align 8
  %224 = getelementptr inbounds %struct.kex, %struct.kex* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ssh*, %struct.ssh** %6, align 8
  %227 = getelementptr inbounds %struct.ssh, %struct.ssh* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 %219(%struct.sshkey* %220, %struct.sshkey* %221, i32** %16, i64* %20, i32* %31, i64 %222, i32 %225, i32 %228)
  store i32 %229, i32* %24, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %216
  br label %272

232:                                              ; preds = %216
  %233 = load i32*, i32** %9, align 8
  %234 = call i32* @EC_KEY_get0_public_key(i32* %233)
  store i32* %234, i32** %11, align 8
  %235 = load %struct.ssh*, %struct.ssh** %6, align 8
  %236 = load i32, i32* @SSH2_MSG_KEX_ECDH_REPLY, align 4
  %237 = call i32 @sshpkt_start(%struct.ssh* %235, i32 %236)
  store i32 %237, i32* %24, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %261, label %239

239:                                              ; preds = %232
  %240 = load %struct.ssh*, %struct.ssh** %6, align 8
  %241 = load i32*, i32** %15, align 8
  %242 = load i64, i64* %21, align 8
  %243 = call i32 @sshpkt_put_string(%struct.ssh* %240, i32* %241, i64 %242)
  store i32 %243, i32* %24, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %261, label %245

245:                                              ; preds = %239
  %246 = load %struct.ssh*, %struct.ssh** %6, align 8
  %247 = load i32*, i32** %11, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @sshpkt_put_ec(%struct.ssh* %246, i32* %247, i32* %248)
  store i32 %249, i32* %24, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %245
  %252 = load %struct.ssh*, %struct.ssh** %6, align 8
  %253 = load i32*, i32** %16, align 8
  %254 = load i64, i64* %20, align 8
  %255 = call i32 @sshpkt_put_string(%struct.ssh* %252, i32* %253, i64 %254)
  store i32 %255, i32* %24, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %251
  %258 = load %struct.ssh*, %struct.ssh** %6, align 8
  %259 = call i32 @sshpkt_send(%struct.ssh* %258)
  store i32 %259, i32* %24, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257, %251, %245, %239, %232
  br label %272

262:                                              ; preds = %257
  %263 = load %struct.ssh*, %struct.ssh** %6, align 8
  %264 = load i64, i64* %23, align 8
  %265 = load i32*, i32** %12, align 8
  %266 = call i32 @kex_derive_keys_bn(%struct.ssh* %263, i32* %31, i64 %264, i32* %265)
  store i32 %266, i32* %24, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load %struct.ssh*, %struct.ssh** %6, align 8
  %270 = call i32 @kex_send_newkeys(%struct.ssh* %269)
  store i32 %270, i32* %24, align 4
  br label %271

271:                                              ; preds = %268, %262
  br label %272

272:                                              ; preds = %271, %261, %231, %206, %185, %148, %142, %125, %108, %102, %90, %84, %57, %43, %37
  %273 = mul nuw i64 4, %29
  %274 = call i32 @explicit_bzero(i32* %31, i64 %273)
  %275 = load %struct.kex*, %struct.kex** %7, align 8
  %276 = getelementptr inbounds %struct.kex, %struct.kex* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @EC_KEY_free(i32* %277)
  %279 = load %struct.kex*, %struct.kex** %7, align 8
  %280 = getelementptr inbounds %struct.kex, %struct.kex* %279, i32 0, i32 2
  store i32* null, i32** %280, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = call i32 @EC_KEY_free(i32* %281)
  %283 = load i32*, i32** %17, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %272
  %286 = load i32*, i32** %17, align 8
  %287 = load i64, i64* %22, align 8
  %288 = call i32 @explicit_bzero(i32* %286, i64 %287)
  %289 = load i32*, i32** %17, align 8
  %290 = call i32 @free(i32* %289)
  br label %291

291:                                              ; preds = %285, %272
  %292 = load i32*, i32** %12, align 8
  %293 = call i32 @BN_clear_free(i32* %292)
  %294 = load i32*, i32** %15, align 8
  %295 = call i32 @free(i32* %294)
  %296 = load i32*, i32** %16, align 8
  %297 = call i32 @free(i32* %296)
  %298 = load i32, i32* %24, align 4
  %299 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %299)
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #2

declare dso_local i32 @EC_KEY_generate_key(i32*) #2

declare dso_local i32* @EC_KEY_get0_group(i32*) #2

declare dso_local i32* @EC_POINT_new(i32*) #2

declare dso_local i32 @sshpkt_get_ec(%struct.ssh*, i32*, i32*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local i64 @sshkey_ec_validate_public(i32*, i32*) #2

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #2

declare dso_local i32 @EC_GROUP_get_degree(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @ECDH_compute_key(i32*, i64, i32*, i32*, i32*) #2

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #2

declare dso_local i32 @sshkey_to_blob(%struct.sshkey*, i32**, i64*) #2

declare dso_local i32 @kex_ecdh_hash(i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(i32) #2

declare dso_local i32 @sshbuf_len(i32) #2

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #2

declare dso_local i32 @sshpkt_put_string(%struct.ssh*, i32*, i64) #2

declare dso_local i32 @sshpkt_put_ec(%struct.ssh*, i32*, i32*) #2

declare dso_local i32 @sshpkt_send(%struct.ssh*) #2

declare dso_local i32 @kex_derive_keys_bn(%struct.ssh*, i32*, i64, i32*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

declare dso_local i32 @EC_KEY_free(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
