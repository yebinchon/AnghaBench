; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_do_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_do_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32* }

@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@DSA_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@DSA_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@DSA_F_DSA_DO_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32, %struct.TYPE_9__*)* @dsa_do_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @dsa_do_sign(i8* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32, i32* @ERR_R_BN_LIB, align 4
  store i32 %16, i32* %13, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21, %3
  %32 = load i32, i32* @DSA_R_MISSING_PARAMETERS, align 4
  store i32 %32, i32* %13, align 4
  br label %241

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DSA_R_MISSING_PRIVATE_KEY, align 4
  store i32 %39, i32* %13, align 4
  br label %241

40:                                               ; preds = %33
  %41 = call %struct.TYPE_8__* (...) @DSA_SIG_new()
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %14, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %241

45:                                               ; preds = %40
  %46 = call i8* (...) @BN_new()
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = call i8* (...) @BN_new()
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %45
  br label %241

64:                                               ; preds = %58
  %65 = call i32* (...) @BN_CTX_new()
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %241

69:                                               ; preds = %64
  %70 = load i32*, i32** %12, align 8
  %71 = call i32* @BN_CTX_get(i32* %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32* @BN_CTX_get(i32* %72)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32* @BN_CTX_get(i32* %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32* @BN_CTX_get(i32* %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %241

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %239, %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @dsa_sign_setup(%struct.TYPE_9__* %83, i32* %84, i32** %7, i32** %86, i8* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %241

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @BN_num_bytes(i32* %96)
  %98 = icmp sgt i32 %93, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @BN_num_bytes(i32* %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i32* @BN_bin2bn(i8* %105, i32 %106, i32* %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %241

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @BN_num_bits(i32* %116)
  %118 = sub nsw i64 %117, 1
  %119 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %120 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %121 = call i32 @BN_priv_rand(i32* %113, i64 %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  br label %241

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @BN_is_zero(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %112, label %129

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %132 = call i32 @BN_set_flags(i32* %130, i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %135 = call i32 @BN_set_flags(i32* %133, i32 %134)
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %138 = call i32 @BN_set_flags(i32* %136, i32 %137)
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = call i32 @BN_mod_mul(i32* %139, i32* %140, i32* %143, i32* %146, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %129
  br label %241

151:                                              ; preds = %129
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @BN_mod_mul(i32* %152, i32* %153, i32* %156, i32* %159, i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %151
  br label %241

164:                                              ; preds = %151
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @BN_mod_mul(i32* %165, i32* %166, i32* %167, i32* %170, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %164
  br label %241

175:                                              ; preds = %164
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @BN_mod_add_quick(i32* %178, i32* %179, i32* %180, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %175
  br label %241

187:                                              ; preds = %175
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = call i32 @BN_mod_mul(i32* %190, i32* %193, i32* %194, i32* %197, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %187
  br label %241

202:                                              ; preds = %187
  %203 = load i32*, i32** %9, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = call i32* @BN_mod_inverse(i32* %203, i32* %204, i32* %207, i32* %208)
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  br label %241

212:                                              ; preds = %202
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32*, i32** %12, align 8
  %224 = call i32 @BN_mod_mul(i32* %215, i32* %218, i32* %219, i32* %222, i32* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %212
  br label %241

227:                                              ; preds = %212
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @BN_is_zero(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = call i64 @BN_is_zero(i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %233, %227
  br label %82

240:                                              ; preds = %233
  store i32 1, i32* %15, align 4
  br label %241

241:                                              ; preds = %240, %226, %211, %201, %186, %174, %163, %150, %123, %110, %91, %80, %68, %63, %44, %38, %31
  %242 = load i32, i32* %15, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* @DSA_F_DSA_DO_SIGN, align 4
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @DSAerr(i32 %245, i32 %246)
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %249 = call i32 @DSA_SIG_free(%struct.TYPE_8__* %248)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  br label %250

250:                                              ; preds = %244, %241
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @BN_CTX_free(i32* %251)
  %253 = load i32*, i32** %7, align 8
  %254 = call i32 @BN_clear_free(i32* %253)
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  ret %struct.TYPE_8__* %255
}

declare dso_local %struct.TYPE_8__* @DSA_SIG_new(...) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @dsa_sign_setup(%struct.TYPE_9__*, i32*, i32**, i32**, i8*, i32) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_priv_rand(i32*, i64, i32, i32) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_add_quick(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i32 @DSA_SIG_free(%struct.TYPE_8__*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
