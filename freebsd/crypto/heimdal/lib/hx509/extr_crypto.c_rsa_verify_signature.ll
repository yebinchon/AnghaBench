; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature_alg = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@HX509_CRYPTO_SIG_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"RSA public decrypt failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"internal rsa decryption failure: ret > tosize\00", align 1
@RA_RSA_USES_DIGEST_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"size from decryption mismatch\00", align 1
@HX509_CRYPTO_OID_MISMATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"object identifier in RSA sig mismatch\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\05\00\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Extra parameters inside RSA signature\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"RSA Signature incorrect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.signature_alg*, %struct.TYPE_25__*, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @rsa_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_verify_signature(i32 %0, %struct.signature_alg* %1, %struct.TYPE_25__* %2, i32* %3, %struct.TYPE_22__* %4, %struct.TYPE_22__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.signature_alg*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.signature_alg* %1, %struct.signature_alg** %8, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %12, align 8
  %22 = call i32 @memset(%struct.TYPE_24__* %14, i32 0, i32 24)
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %13, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %21, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %20, align 8
  %36 = load i64, i64* %20, align 8
  %37 = call i32* @d2i_RSAPublicKey(i32* null, i8** %21, i64 %36)
  store i32* %37, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %42, i32 0, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %185

45:                                               ; preds = %6
  %46 = load i32*, i32** %19, align 8
  %47 = call i32 @RSA_size(i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i8* @malloc(i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %54, i32 0, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %185

57:                                               ; preds = %45
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8*, i8** %15, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %68 = call i32 @RSA_public_decrypt(i64 %60, i8* %64, i8* %65, i32* %66, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %73, i32 0, i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @free(i8* %77)
  br label %185

79:                                               ; preds = %57
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @_hx509_abort(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %87 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RA_RSA_USES_DIGEST_INFO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %161

92:                                               ; preds = %85
  %93 = load i8*, i8** %15, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @decode_DigestInfo(i8* %93, i32 %94, %struct.TYPE_24__* %14, i64* %20)
  store i32 %95, i32* %18, align 4
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %185

101:                                              ; preds = %92
  %102 = load i64, i64* %20, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %108, i32 0, i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %185

111:                                              ; preds = %101
  %112 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %113 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %112, i32 0, i32 1
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = icmp ne %struct.TYPE_20__* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %120 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %119, i32 0, i32 1
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = call i64 @der_heim_oid_cmp(i32* %118, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load i32, i32* @HX509_CRYPTO_OID_MISMATCH, align 4
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %127, i32 0, i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %185

130:                                              ; preds = %116, %111
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = icmp ne %struct.TYPE_21__* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 2
  br i1 %141, label %150, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @memcmp(i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142, %135
  %151 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %18, align 4
  %154 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %152, i32 0, i32 %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %185

155:                                              ; preds = %142, %130
  %156 = load i32, i32* %7, align 4
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %160 = call i32 @_hx509_verify_signature(i32 %156, i32* null, %struct.TYPE_17__* %157, %struct.TYPE_22__* %158, i32* %159)
  store i32 %160, i32* %18, align 4
  br label %184

161:                                              ; preds = %85
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %161
  %169 = load i8*, i8** %15, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i64 @ct_memcmp(i8* %169, i64 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %168, %161
  %177 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %178, i32 0, i32 %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %185

181:                                              ; preds = %168
  %182 = load i8*, i8** %15, align 8
  %183 = call i32 @free(i8* %182)
  br label %184

184:                                              ; preds = %181, %155
  store i32 0, i32* %18, align 4
  br label %185

185:                                              ; preds = %184, %176, %150, %125, %106, %100, %71, %52, %40
  %186 = call i32 @free_DigestInfo(%struct.TYPE_24__* %14)
  %187 = load i32*, i32** %19, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32*, i32** %19, align 8
  %191 = call i32 @RSA_free(i32* %190)
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i32, i32* %18, align 4
  ret i32 %193
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32* @d2i_RSAPublicKey(i32*, i8**, i64) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @RSA_public_decrypt(i64, i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @decode_DigestInfo(i8*, i32, %struct.TYPE_24__*, i64*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @_hx509_verify_signature(i32, i32*, %struct.TYPE_17__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i64 @ct_memcmp(i8*, i64, i32) #1

declare dso_local i32 @free_DigestInfo(%struct.TYPE_24__*) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
