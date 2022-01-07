; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sigver.c_do_sigver_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sigver.c_do_sigver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* }

@EVP_PKEY_FLAG_SIGCTX_CUSTOM = common dso_local global i32 0, align 4
@EVP_F_DO_SIGVER_INIT = common dso_local global i32 0, align 4
@EVP_R_NO_DEFAULT_DIGEST = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFYCTX = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFY = common dso_local global i32 0, align 4
@update = common dso_local global i8* null, align 8
@EVP_PKEY_OP_SIGNCTX = common dso_local global i32 0, align 4
@EVP_PKEY_OP_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__**, i32*, i32*, i32*, i32)* @do_sigver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sigver_init(%struct.TYPE_19__* %0, %struct.TYPE_18__** %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.TYPE_18__* @EVP_PKEY_CTX_new(i32* %20, i32* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %24, align 8
  br label %25

25:                                               ; preds = %19, %6
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %238

31:                                               ; preds = %25
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EVP_PKEY_FLAG_SIGCTX_CUSTOM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %31
  %43 = load i32*, i32** %10, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  %47 = call i64 @EVP_PKEY_get_default_digest_nid(i32* %46, i32* %14)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = call i32* @EVP_get_digestbynid(i32 %50)
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32*, i32** %10, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @EVP_F_DO_SIGVER_INIT, align 4
  %58 = load i32, i32* @EVP_R_NO_DEFAULT_DIGEST, align 4
  %59 = call i32 @EVPerr(i32 %57, i32 %58)
  store i32 0, i32* %7, align 4
  br label %238

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %122

64:                                               ; preds = %61
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %70, align 8
  %72 = icmp ne i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %64
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = call i64 %80(%struct.TYPE_18__* %83, %struct.TYPE_19__* %84)
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %238

88:                                               ; preds = %73
  %89 = load i32, i32* @EVP_PKEY_OP_VERIFYCTX, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 8
  br label %121

94:                                               ; preds = %64
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load i32, i32* @EVP_PKEY_OP_VERIFY, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load i8*, i8** @update, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %120

112:                                              ; preds = %94
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = call i64 @EVP_PKEY_verify_init(%struct.TYPE_18__* %115)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %238

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %88
  br label %180

122:                                              ; preds = %61
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %128, align 8
  %130 = icmp ne i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)* %129, null
  br i1 %130, label %131, label %152

131:                                              ; preds = %122
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %137, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %143 = call i64 %138(%struct.TYPE_18__* %141, %struct.TYPE_19__* %142)
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %238

146:                                              ; preds = %131
  %147 = load i32, i32* @EVP_PKEY_OP_SIGNCTX, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 8
  br label %179

152:                                              ; preds = %122
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 8
  %167 = load i8*, i8** @update, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %178

170:                                              ; preds = %152
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = call i64 @EVP_PKEY_sign_init(%struct.TYPE_18__* %173)
  %175 = icmp sle i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %238

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178, %146
  br label %180

180:                                              ; preds = %179, %121
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = call i64 @EVP_PKEY_CTX_set_signature_md(%struct.TYPE_18__* %183, i32* %184)
  %186 = icmp sle i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %238

188:                                              ; preds = %180
  %189 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %190 = icmp ne %struct.TYPE_18__** %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %193, align 8
  %195 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %195, align 8
  br label %196

196:                                              ; preds = %191, %188
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @EVP_PKEY_FLAG_SIGCTX_CUSTOM, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  store i32 1, i32* %7, align 4
  br label %238

208:                                              ; preds = %196
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @EVP_DigestInit_ex(%struct.TYPE_19__* %209, i32* %210, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %208
  store i32 0, i32* %7, align 4
  br label %238

215:                                              ; preds = %208
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 5
  %222 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %221, align 8
  %223 = icmp ne i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* %222, null
  br i1 %223, label %224, label %237

224:                                              ; preds = %215
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 5
  %231 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %236 = call i32 %231(%struct.TYPE_18__* %234, %struct.TYPE_19__* %235)
  store i32 %236, i32* %7, align 4
  br label %238

237:                                              ; preds = %215
  store i32 1, i32* %7, align 4
  br label %238

238:                                              ; preds = %237, %224, %214, %207, %187, %176, %145, %118, %87, %56, %30
  %239 = load i32, i32* %7, align 4
  ret i32 %239
}

declare dso_local %struct.TYPE_18__* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_get_default_digest_nid(i32*, i32*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_verify_init(%struct.TYPE_18__*) #1

declare dso_local i64 @EVP_PKEY_sign_init(%struct.TYPE_18__*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(%struct.TYPE_19__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
