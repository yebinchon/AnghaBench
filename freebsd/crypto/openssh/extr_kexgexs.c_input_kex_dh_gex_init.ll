; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexs.c_input_kex_dh_gex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexs.c_input_kex_dh_gex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i64, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)* }
%struct.sshkey = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_NO_HOSTKEY_LOADED = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad client public DH value\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_DH_GEX_REPLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_dh_gex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_dh_gex_init(i32 %0, i32 %1, %struct.ssh* %2) #0 {
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
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %26 = load %struct.ssh*, %struct.ssh** %6, align 8
  %27 = getelementptr inbounds %struct.ssh, %struct.ssh* %26, i32 0, i32 1
  %28 = load %struct.kex*, %struct.kex** %27, align 8
  store %struct.kex* %28, %struct.kex** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %29 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  store i64 0, i64* %22, align 8
  %33 = load %struct.kex*, %struct.kex** %7, align 8
  %34 = getelementptr inbounds %struct.kex, %struct.kex* %33, i32 0, i32 16
  %35 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %34, align 8
  %36 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %3
  %38 = load %struct.kex*, %struct.kex** %7, align 8
  %39 = getelementptr inbounds %struct.kex, %struct.kex* %38, i32 0, i32 15
  %40 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %39, align 8
  %41 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %3
  %43 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %43, i32* %25, align 4
  br label %269

44:                                               ; preds = %37
  %45 = load %struct.kex*, %struct.kex** %7, align 8
  %46 = getelementptr inbounds %struct.kex, %struct.kex* %45, i32 0, i32 16
  %47 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %46, align 8
  %48 = load %struct.kex*, %struct.kex** %7, align 8
  %49 = getelementptr inbounds %struct.kex, %struct.kex* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kex*, %struct.kex** %7, align 8
  %52 = getelementptr inbounds %struct.kex, %struct.kex* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ssh*, %struct.ssh** %6, align 8
  %55 = call %struct.sshkey* %47(i32 %50, i32 %53, %struct.ssh* %54)
  store %struct.sshkey* %55, %struct.sshkey** %13, align 8
  %56 = load %struct.kex*, %struct.kex** %7, align 8
  %57 = getelementptr inbounds %struct.kex, %struct.kex* %56, i32 0, i32 15
  %58 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %57, align 8
  %59 = load %struct.kex*, %struct.kex** %7, align 8
  %60 = getelementptr inbounds %struct.kex, %struct.kex* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kex*, %struct.kex** %7, align 8
  %63 = getelementptr inbounds %struct.kex, %struct.kex* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ssh*, %struct.ssh** %6, align 8
  %66 = call %struct.sshkey* %58(i32 %61, i32 %64, %struct.ssh* %65)
  store %struct.sshkey* %66, %struct.sshkey** %14, align 8
  %67 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %68 = icmp eq %struct.sshkey* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load i32, i32* @SSH_ERR_NO_HOSTKEY_LOADED, align 4
  store i32 %70, i32* %25, align 4
  br label %269

71:                                               ; preds = %44
  %72 = call i32* (...) @BN_new()
  store i32* %72, i32** %9, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %75, i32* %25, align 4
  br label %269

76:                                               ; preds = %71
  %77 = load %struct.ssh*, %struct.ssh** %6, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @sshpkt_get_bignum2(%struct.ssh* %77, i32* %78)
  store i32 %79, i32* %25, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.ssh*, %struct.ssh** %6, align 8
  %83 = call i32 @sshpkt_get_end(%struct.ssh* %82)
  store i32 %83, i32* %25, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %76
  br label %269

86:                                               ; preds = %81
  %87 = load %struct.kex*, %struct.kex** %7, align 8
  %88 = getelementptr inbounds %struct.kex, %struct.kex* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @DH_get0_key(i32* %89, i32** %10, i32* null)
  %91 = load %struct.kex*, %struct.kex** %7, align 8
  %92 = getelementptr inbounds %struct.kex, %struct.kex* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @DH_get0_pqg(i32* %93, i32** %11, i32* null, i32** %12)
  %95 = load %struct.kex*, %struct.kex** %7, align 8
  %96 = getelementptr inbounds %struct.kex, %struct.kex* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @dh_pub_is_valid(i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %86
  %102 = load %struct.ssh*, %struct.ssh** %6, align 8
  %103 = call i32 @sshpkt_disconnect(%struct.ssh* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %104, i32* %25, align 4
  br label %269

105:                                              ; preds = %86
  %106 = load %struct.kex*, %struct.kex** %7, align 8
  %107 = getelementptr inbounds %struct.kex, %struct.kex* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @DH_size(i32* %108)
  store i64 %109, i64* %22, align 8
  %110 = load i64, i64* %22, align 8
  %111 = call i8* @malloc(i64 %110)
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %15, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = call i32* (...) @BN_new()
  store i32* %115, i32** %8, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114, %105
  %118 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %118, i32* %25, align 4
  br label %269

119:                                              ; preds = %114
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.kex*, %struct.kex** %7, align 8
  %123 = getelementptr inbounds %struct.kex, %struct.kex* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @DH_compute_key(i32* %120, i32* %121, i32* %124)
  store i32 %125, i32* %24, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %119
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %24, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = call i32* @BN_bin2bn(i32* %128, i32 %129, i32* %130)
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %127, %119
  %134 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %134, i32* %25, align 4
  br label %269

135:                                              ; preds = %127
  %136 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %137 = call i32 @sshkey_to_blob(%struct.sshkey* %136, i32** %17, i64* %20)
  store i32 %137, i32* %25, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %269

140:                                              ; preds = %135
  %141 = mul nuw i64 4, %30
  store i64 %141, i64* %23, align 8
  %142 = load %struct.kex*, %struct.kex** %7, align 8
  %143 = getelementptr inbounds %struct.kex, %struct.kex* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.kex*, %struct.kex** %7, align 8
  %146 = getelementptr inbounds %struct.kex, %struct.kex* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.kex*, %struct.kex** %7, align 8
  %149 = getelementptr inbounds %struct.kex, %struct.kex* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.kex*, %struct.kex** %7, align 8
  %152 = getelementptr inbounds %struct.kex, %struct.kex* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @sshbuf_ptr(i32 %153)
  %155 = load %struct.kex*, %struct.kex** %7, align 8
  %156 = getelementptr inbounds %struct.kex, %struct.kex* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @sshbuf_len(i32 %157)
  %159 = load %struct.kex*, %struct.kex** %7, align 8
  %160 = getelementptr inbounds %struct.kex, %struct.kex* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @sshbuf_ptr(i32 %161)
  %163 = load %struct.kex*, %struct.kex** %7, align 8
  %164 = getelementptr inbounds %struct.kex, %struct.kex* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @sshbuf_len(i32 %165)
  %167 = load i32*, i32** %17, align 8
  %168 = load i64, i64* %20, align 8
  %169 = load %struct.kex*, %struct.kex** %7, align 8
  %170 = getelementptr inbounds %struct.kex, %struct.kex* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.kex*, %struct.kex** %7, align 8
  %173 = getelementptr inbounds %struct.kex, %struct.kex* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.kex*, %struct.kex** %7, align 8
  %176 = getelementptr inbounds %struct.kex, %struct.kex* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @kexgex_hash(i32 %144, i32 %147, i32 %150, i32 %154, i32 %158, i32 %162, i32 %166, i32* %167, i64 %168, i32 %171, i32 %174, i32 %177, i32* %178, i32* %179, i32* %180, i32* %181, i32* %182, i32* %32, i64* %23)
  store i32 %183, i32* %25, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %140
  br label %269

186:                                              ; preds = %140
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
  store i32 %207, i32* %25, align 4
  br label %269

208:                                              ; preds = %191
  %209 = load %struct.kex*, %struct.kex** %7, align 8
  %210 = getelementptr inbounds %struct.kex, %struct.kex* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.kex*, %struct.kex** %7, align 8
  %213 = getelementptr inbounds %struct.kex, %struct.kex* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @memcpy(i32* %211, i32* %32, i64 %214)
  br label %216

216:                                              ; preds = %208, %186
  %217 = load %struct.kex*, %struct.kex** %7, align 8
  %218 = getelementptr inbounds %struct.kex, %struct.kex* %217, i32 0, i32 1
  %219 = load i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)** %218, align 8
  %220 = load %struct.sshkey*, %struct.sshkey** %14, align 8
  %221 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %222 = load i64, i64* %23, align 8
  %223 = load %struct.kex*, %struct.kex** %7, align 8
  %224 = getelementptr inbounds %struct.kex, %struct.kex* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ssh*, %struct.ssh** %6, align 8
  %227 = getelementptr inbounds %struct.ssh, %struct.ssh* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 %219(%struct.sshkey* %220, %struct.sshkey* %221, i32** %16, i64* %21, i32* %32, i64 %222, i32 %225, i32 %228)
  store i32 %229, i32* %25, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %216
  br label %269

232:                                              ; preds = %216
  %233 = load %struct.ssh*, %struct.ssh** %6, align 8
  %234 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_REPLY, align 4
  %235 = call i32 @sshpkt_start(%struct.ssh* %233, i32 %234)
  store i32 %235, i32* %25, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %258, label %237

237:                                              ; preds = %232
  %238 = load %struct.ssh*, %struct.ssh** %6, align 8
  %239 = load i32*, i32** %17, align 8
  %240 = load i64, i64* %20, align 8
  %241 = call i32 @sshpkt_put_string(%struct.ssh* %238, i32* %239, i64 %240)
  store i32 %241, i32* %25, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %258, label %243

243:                                              ; preds = %237
  %244 = load %struct.ssh*, %struct.ssh** %6, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @sshpkt_put_bignum2(%struct.ssh* %244, i32* %245)
  store i32 %246, i32* %25, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %243
  %249 = load %struct.ssh*, %struct.ssh** %6, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i64, i64* %21, align 8
  %252 = call i32 @sshpkt_put_string(%struct.ssh* %249, i32* %250, i64 %251)
  store i32 %252, i32* %25, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %248
  %255 = load %struct.ssh*, %struct.ssh** %6, align 8
  %256 = call i32 @sshpkt_send(%struct.ssh* %255)
  store i32 %256, i32* %25, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %248, %243, %237, %232
  br label %269

259:                                              ; preds = %254
  %260 = load %struct.ssh*, %struct.ssh** %6, align 8
  %261 = load i64, i64* %23, align 8
  %262 = load i32*, i32** %8, align 8
  %263 = call i32 @kex_derive_keys_bn(%struct.ssh* %260, i32* %32, i64 %261, i32* %262)
  store i32 %263, i32* %25, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.ssh*, %struct.ssh** %6, align 8
  %267 = call i32 @kex_send_newkeys(%struct.ssh* %266)
  store i32 %267, i32* %25, align 4
  br label %268

268:                                              ; preds = %265, %259
  br label %269

269:                                              ; preds = %268, %258, %231, %206, %185, %139, %133, %117, %101, %85, %74, %69, %42
  %270 = load %struct.kex*, %struct.kex** %7, align 8
  %271 = getelementptr inbounds %struct.kex, %struct.kex* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @DH_free(i32* %272)
  %274 = load %struct.kex*, %struct.kex** %7, align 8
  %275 = getelementptr inbounds %struct.kex, %struct.kex* %274, i32 0, i32 2
  store i32* null, i32** %275, align 8
  %276 = load i32*, i32** %9, align 8
  %277 = call i32 @BN_clear_free(i32* %276)
  %278 = load i32*, i32** %15, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %269
  %281 = load i32*, i32** %15, align 8
  %282 = load i64, i64* %22, align 8
  %283 = call i32 @explicit_bzero(i32* %281, i64 %282)
  %284 = load i32*, i32** %15, align 8
  %285 = call i32 @free(i32* %284)
  br label %286

286:                                              ; preds = %280, %269
  %287 = load i32*, i32** %8, align 8
  %288 = call i32 @BN_clear_free(i32* %287)
  %289 = load i32*, i32** %17, align 8
  %290 = call i32 @free(i32* %289)
  %291 = load i32*, i32** %16, align 8
  %292 = call i32 @free(i32* %291)
  %293 = load i32, i32* %25, align 4
  %294 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %294)
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @sshpkt_get_bignum2(%struct.ssh*, i32*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #2

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32**) #2

declare dso_local i32 @dh_pub_is_valid(i32*, i32*) #2

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #2

declare dso_local i64 @DH_size(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @DH_compute_key(i32*, i32*, i32*) #2

declare dso_local i32* @BN_bin2bn(i32*, i32, i32*) #2

declare dso_local i32 @sshkey_to_blob(%struct.sshkey*, i32**, i64*) #2

declare dso_local i32 @kexgex_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(i32) #2

declare dso_local i32 @sshbuf_len(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #2

declare dso_local i32 @sshpkt_put_string(%struct.ssh*, i32*, i64) #2

declare dso_local i32 @sshpkt_put_bignum2(%struct.ssh*, i32*) #2

declare dso_local i32 @sshpkt_send(%struct.ssh*) #2

declare dso_local i32 @kex_derive_keys_bn(%struct.ssh*, i32*, i64, i32*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @DH_free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
