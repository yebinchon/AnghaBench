; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhs.c_input_kex_dh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhs.c_input_kex_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i64, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)* }
%struct.sshkey = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_NO_HOSTKEY_LOADED = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad client public DH value\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH2_MSG_KEXDH_REPLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_kex_dh_init(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca %struct.sshkey*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %24 = load %struct.ssh*, %struct.ssh** %6, align 8
  %25 = getelementptr inbounds %struct.ssh, %struct.ssh* %24, i32 0, i32 1
  %26 = load %struct.kex*, %struct.kex** %25, align 8
  store %struct.kex* %26, %struct.kex** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %27 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  store i64 0, i64* %20, align 8
  %31 = load %struct.kex*, %struct.kex** %7, align 8
  %32 = getelementptr inbounds %struct.kex, %struct.kex* %31, i32 0, i32 13
  %33 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %32, align 8
  %34 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.kex*, %struct.kex** %7, align 8
  %37 = getelementptr inbounds %struct.kex, %struct.kex* %36, i32 0, i32 12
  %38 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %37, align 8
  %39 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %23, align 4
  br label %252

42:                                               ; preds = %35
  %43 = load %struct.kex*, %struct.kex** %7, align 8
  %44 = getelementptr inbounds %struct.kex, %struct.kex* %43, i32 0, i32 13
  %45 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %44, align 8
  %46 = load %struct.kex*, %struct.kex** %7, align 8
  %47 = getelementptr inbounds %struct.kex, %struct.kex* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kex*, %struct.kex** %7, align 8
  %50 = getelementptr inbounds %struct.kex, %struct.kex* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ssh*, %struct.ssh** %6, align 8
  %53 = call %struct.sshkey* %45(i32 %48, i32 %51, %struct.ssh* %52)
  store %struct.sshkey* %53, %struct.sshkey** %11, align 8
  %54 = load %struct.kex*, %struct.kex** %7, align 8
  %55 = getelementptr inbounds %struct.kex, %struct.kex* %54, i32 0, i32 12
  %56 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %55, align 8
  %57 = load %struct.kex*, %struct.kex** %7, align 8
  %58 = getelementptr inbounds %struct.kex, %struct.kex* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kex*, %struct.kex** %7, align 8
  %61 = getelementptr inbounds %struct.kex, %struct.kex* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ssh*, %struct.ssh** %6, align 8
  %64 = call %struct.sshkey* %56(i32 %59, i32 %62, %struct.ssh* %63)
  store %struct.sshkey* %64, %struct.sshkey** %12, align 8
  %65 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %66 = icmp eq %struct.sshkey* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %42
  %68 = load i32, i32* @SSH_ERR_NO_HOSTKEY_LOADED, align 4
  store i32 %68, i32* %23, align 4
  br label %252

69:                                               ; preds = %42
  %70 = call i32* (...) @BN_new()
  store i32* %70, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %73, i32* %23, align 4
  br label %252

74:                                               ; preds = %69
  %75 = load %struct.kex*, %struct.kex** %7, align 8
  %76 = getelementptr inbounds %struct.kex, %struct.kex* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @DH_get0_key(i32* %77, i32** %10, i32* null)
  %79 = load %struct.ssh*, %struct.ssh** %6, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @sshpkt_get_bignum2(%struct.ssh* %79, i32* %80)
  store i32 %81, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load %struct.ssh*, %struct.ssh** %6, align 8
  %85 = call i32 @sshpkt_get_end(%struct.ssh* %84)
  store i32 %85, i32* %23, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %74
  br label %252

88:                                               ; preds = %83
  %89 = load %struct.kex*, %struct.kex** %7, align 8
  %90 = getelementptr inbounds %struct.kex, %struct.kex* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @dh_pub_is_valid(i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = load %struct.ssh*, %struct.ssh** %6, align 8
  %97 = call i32 @sshpkt_disconnect(%struct.ssh* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %98, i32* %23, align 4
  br label %252

99:                                               ; preds = %88
  %100 = load %struct.kex*, %struct.kex** %7, align 8
  %101 = getelementptr inbounds %struct.kex, %struct.kex* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @DH_size(i32* %102)
  store i64 %103, i64* %20, align 8
  %104 = load i64, i64* %20, align 8
  %105 = call i8* @malloc(i64 %104)
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %13, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = call i32* (...) @BN_new()
  store i32* %109, i32** %8, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %99
  %112 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %112, i32* %23, align 4
  br label %252

113:                                              ; preds = %108
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.kex*, %struct.kex** %7, align 8
  %117 = getelementptr inbounds %struct.kex, %struct.kex* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @DH_compute_key(i32* %114, i32* %115, i32* %118)
  store i32 %119, i32* %22, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %113
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %22, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = call i32* @BN_bin2bn(i32* %122, i32 %123, i32* %124)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121, %113
  %128 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %128, i32* %23, align 4
  br label %252

129:                                              ; preds = %121
  %130 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %131 = call i32 @sshkey_to_blob(%struct.sshkey* %130, i32** %15, i64* %18)
  store i32 %131, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %252

134:                                              ; preds = %129
  %135 = mul nuw i64 4, %28
  store i64 %135, i64* %21, align 8
  %136 = load %struct.kex*, %struct.kex** %7, align 8
  %137 = getelementptr inbounds %struct.kex, %struct.kex* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.kex*, %struct.kex** %7, align 8
  %140 = getelementptr inbounds %struct.kex, %struct.kex* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.kex*, %struct.kex** %7, align 8
  %143 = getelementptr inbounds %struct.kex, %struct.kex* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.kex*, %struct.kex** %7, align 8
  %146 = getelementptr inbounds %struct.kex, %struct.kex* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @sshbuf_ptr(i32 %147)
  %149 = load %struct.kex*, %struct.kex** %7, align 8
  %150 = getelementptr inbounds %struct.kex, %struct.kex* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sshbuf_len(i32 %151)
  %153 = load %struct.kex*, %struct.kex** %7, align 8
  %154 = getelementptr inbounds %struct.kex, %struct.kex* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @sshbuf_ptr(i32 %155)
  %157 = load %struct.kex*, %struct.kex** %7, align 8
  %158 = getelementptr inbounds %struct.kex, %struct.kex* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @sshbuf_len(i32 %159)
  %161 = load i32*, i32** %15, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @kex_dh_hash(i32 %138, i32 %141, i32 %144, i32 %148, i32 %152, i32 %156, i32 %160, i32* %161, i64 %162, i32* %163, i32* %164, i32* %165, i32* %30, i64* %21)
  store i32 %166, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %134
  br label %252

169:                                              ; preds = %134
  %170 = load %struct.kex*, %struct.kex** %7, align 8
  %171 = getelementptr inbounds %struct.kex, %struct.kex* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %199

174:                                              ; preds = %169
  %175 = load i64, i64* %21, align 8
  %176 = load %struct.kex*, %struct.kex** %7, align 8
  %177 = getelementptr inbounds %struct.kex, %struct.kex* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.kex*, %struct.kex** %7, align 8
  %179 = getelementptr inbounds %struct.kex, %struct.kex* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i8* @malloc(i64 %180)
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.kex*, %struct.kex** %7, align 8
  %184 = getelementptr inbounds %struct.kex, %struct.kex* %183, i32 0, i32 4
  store i32* %182, i32** %184, align 8
  %185 = load %struct.kex*, %struct.kex** %7, align 8
  %186 = getelementptr inbounds %struct.kex, %struct.kex* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %174
  %190 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %190, i32* %23, align 4
  br label %252

191:                                              ; preds = %174
  %192 = load %struct.kex*, %struct.kex** %7, align 8
  %193 = getelementptr inbounds %struct.kex, %struct.kex* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.kex*, %struct.kex** %7, align 8
  %196 = getelementptr inbounds %struct.kex, %struct.kex* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @memcpy(i32* %194, i32* %30, i64 %197)
  br label %199

199:                                              ; preds = %191, %169
  %200 = load %struct.kex*, %struct.kex** %7, align 8
  %201 = getelementptr inbounds %struct.kex, %struct.kex* %200, i32 0, i32 1
  %202 = load i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)** %201, align 8
  %203 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %204 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %205 = load i64, i64* %21, align 8
  %206 = load %struct.kex*, %struct.kex** %7, align 8
  %207 = getelementptr inbounds %struct.kex, %struct.kex* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ssh*, %struct.ssh** %6, align 8
  %210 = getelementptr inbounds %struct.ssh, %struct.ssh* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %202(%struct.sshkey* %203, %struct.sshkey* %204, i32** %14, i64* %19, i32* %30, i64 %205, i32 %208, i32 %211)
  store i32 %212, i32* %23, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %199
  br label %252

215:                                              ; preds = %199
  %216 = load %struct.ssh*, %struct.ssh** %6, align 8
  %217 = load i32, i32* @SSH2_MSG_KEXDH_REPLY, align 4
  %218 = call i32 @sshpkt_start(%struct.ssh* %216, i32 %217)
  store i32 %218, i32* %23, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %215
  %221 = load %struct.ssh*, %struct.ssh** %6, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = load i64, i64* %18, align 8
  %224 = call i32 @sshpkt_put_string(%struct.ssh* %221, i32* %222, i64 %223)
  store i32 %224, i32* %23, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %241, label %226

226:                                              ; preds = %220
  %227 = load %struct.ssh*, %struct.ssh** %6, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @sshpkt_put_bignum2(%struct.ssh* %227, i32* %228)
  store i32 %229, i32* %23, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %226
  %232 = load %struct.ssh*, %struct.ssh** %6, align 8
  %233 = load i32*, i32** %14, align 8
  %234 = load i64, i64* %19, align 8
  %235 = call i32 @sshpkt_put_string(%struct.ssh* %232, i32* %233, i64 %234)
  store i32 %235, i32* %23, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %231
  %238 = load %struct.ssh*, %struct.ssh** %6, align 8
  %239 = call i32 @sshpkt_send(%struct.ssh* %238)
  store i32 %239, i32* %23, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237, %231, %226, %220, %215
  br label %252

242:                                              ; preds = %237
  %243 = load %struct.ssh*, %struct.ssh** %6, align 8
  %244 = load i64, i64* %21, align 8
  %245 = load i32*, i32** %8, align 8
  %246 = call i32 @kex_derive_keys_bn(%struct.ssh* %243, i32* %30, i64 %244, i32* %245)
  store i32 %246, i32* %23, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.ssh*, %struct.ssh** %6, align 8
  %250 = call i32 @kex_send_newkeys(%struct.ssh* %249)
  store i32 %250, i32* %23, align 4
  br label %251

251:                                              ; preds = %248, %242
  br label %252

252:                                              ; preds = %251, %241, %214, %189, %168, %133, %127, %111, %95, %87, %72, %67, %40
  %253 = mul nuw i64 4, %28
  %254 = call i32 @explicit_bzero(i32* %30, i64 %253)
  %255 = load %struct.kex*, %struct.kex** %7, align 8
  %256 = getelementptr inbounds %struct.kex, %struct.kex* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @DH_free(i32* %257)
  %259 = load %struct.kex*, %struct.kex** %7, align 8
  %260 = getelementptr inbounds %struct.kex, %struct.kex* %259, i32 0, i32 2
  store i32* null, i32** %260, align 8
  %261 = load i32*, i32** %9, align 8
  %262 = call i32 @BN_clear_free(i32* %261)
  %263 = load i32*, i32** %13, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %252
  %266 = load i32*, i32** %13, align 8
  %267 = load i64, i64* %20, align 8
  %268 = call i32 @explicit_bzero(i32* %266, i64 %267)
  %269 = load i32*, i32** %13, align 8
  %270 = call i32 @free(i32* %269)
  br label %271

271:                                              ; preds = %265, %252
  %272 = load i32*, i32** %8, align 8
  %273 = call i32 @BN_clear_free(i32* %272)
  %274 = load i32*, i32** %15, align 8
  %275 = call i32 @free(i32* %274)
  %276 = load i32*, i32** %14, align 8
  %277 = call i32 @free(i32* %276)
  %278 = load i32, i32* %23, align 4
  %279 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %279)
  ret i32 %278
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #2

declare dso_local i32 @sshpkt_get_bignum2(%struct.ssh*, i32*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local i32 @dh_pub_is_valid(i32*, i32*) #2

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #2

declare dso_local i64 @DH_size(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @DH_compute_key(i32*, i32*, i32*) #2

declare dso_local i32* @BN_bin2bn(i32*, i32, i32*) #2

declare dso_local i32 @sshkey_to_blob(%struct.sshkey*, i32**, i64*) #2

declare dso_local i32 @kex_dh_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(i32) #2

declare dso_local i32 @sshbuf_len(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #2

declare dso_local i32 @sshpkt_put_string(%struct.ssh*, i32*, i64) #2

declare dso_local i32 @sshpkt_put_bignum2(%struct.ssh*, i32*) #2

declare dso_local i32 @sshpkt_send(%struct.ssh*) #2

declare dso_local i32 @kex_derive_keys_bn(%struct.ssh*, i32*, i64, i32*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

declare dso_local i32 @DH_free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

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
