; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_dsa_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_dsa_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature_alg = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to set DSA key\00", align 1
@HX509_CRYPTO_SIG_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"DSA parameters missing\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DSA parameters failed to decode\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to set DSA parameters\00", align 1
@HX509_CRYPTO_BAD_SIGNATURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"BAD DSA sigature\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid format of DSA sigature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.signature_alg*, %struct.TYPE_21__*, i32*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @dsa_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_verify_signature(i32 %0, %struct.signature_alg* %1, %struct.TYPE_21__* %2, i32* %3, %struct.TYPE_18__* %4, %struct.TYPE_18__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.signature_alg*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.signature_alg* %1, %struct.signature_alg** %9, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %13, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %14, align 8
  %27 = call i32* (...) @DSA_new()
  store i32* %27, i32** %22, align 8
  %28 = load i32*, i32** %22, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @hx509_set_error_string(i32 %31, i32 0, i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %7, align 4
  br label %190

35:                                               ; preds = %6
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 8
  %45 = call i32 @decode_DSAPublicKey(i32 %39, i32 %44, i32* %15, i64* %17)
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %186

49:                                               ; preds = %35
  %50 = call i32* @heim_int2BN(i32* %15)
  store i32* %50, i32** %18, align 8
  %51 = call i32 @free_DSAPublicKey(i32* %15)
  %52 = load i32*, i32** %18, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %23, align 4
  %58 = call i32 @hx509_set_error_string(i32 %56, i32 0, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %186

59:                                               ; preds = %49
  %60 = load i32*, i32** %22, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @DSA_set0_key(i32* %60, i32* %61, i32* null)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @BN_free(i32* %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %23, align 4
  %71 = call i32 @hx509_set_error_string(i32 %69, i32 0, i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %186

72:                                               ; preds = %59
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = icmp eq %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %23, align 4
  %82 = call i32 @hx509_set_error_string(i32 %80, i32 0, i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %186

83:                                               ; preds = %72
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @decode_DSAParams(i32 %89, i32 %95, %struct.TYPE_20__* %16, i64* %17)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @hx509_set_error_string(i32 %100, i32 0, i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %186

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %105 = call i32* @heim_int2BN(i32* %104)
  store i32* %105, i32** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %107 = call i32* @heim_int2BN(i32* %106)
  store i32* %107, i32** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %109 = call i32* @heim_int2BN(i32* %108)
  store i32* %109, i32** %21, align 8
  %110 = call i32 @free_DSAParams(%struct.TYPE_20__* %16)
  %111 = load i32*, i32** %19, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load i32*, i32** %20, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %21, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %116, %113, %103
  %120 = load i32*, i32** %19, align 8
  %121 = call i32 @BN_free(i32* %120)
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @BN_free(i32* %122)
  %124 = load i32*, i32** %21, align 8
  %125 = call i32 @BN_free(i32* %124)
  %126 = load i32, i32* @ENOMEM, align 4
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @hx509_set_error_string(i32 %127, i32 0, i32 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %186

130:                                              ; preds = %116
  %131 = load i32*, i32** %22, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = load i32*, i32** %20, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @DSA_set0_pqg(i32* %131, i32* %132, i32* %133, i32* %134)
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load i32*, i32** %19, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @BN_free(i32* %141)
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @BN_free(i32* %143)
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %23, align 4
  %148 = call i32 @hx509_set_error_string(i32 %146, i32 0, i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %186

149:                                              ; preds = %130
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %22, align 8
  %164 = call i32 @DSA_verify(i32 -1, i64 %152, i32 %155, i8* %159, i32 %162, i32* %163)
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %23, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  store i32 0, i32* %23, align 4
  br label %185

168:                                              ; preds = %149
  %169 = load i32, i32* %23, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %23, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %179

174:                                              ; preds = %171, %168
  %175 = load i32, i32* @HX509_CRYPTO_BAD_SIGNATURE, align 4
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %23, align 4
  %178 = call i32 @hx509_set_error_string(i32 %176, i32 0, i32 %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %184

179:                                              ; preds = %171
  %180 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %23, align 4
  %183 = call i32 @hx509_set_error_string(i32 %181, i32 0, i32 %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %174
  br label %185

185:                                              ; preds = %184, %167
  br label %186

186:                                              ; preds = %185, %138, %119, %99, %78, %65, %54, %48
  %187 = load i32*, i32** %22, align 8
  %188 = call i32 @DSA_free(i32* %187)
  %189 = load i32, i32* %23, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %186, %30
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @decode_DSAPublicKey(i32, i32, i32*, i64*) #1

declare dso_local i32* @heim_int2BN(i32*) #1

declare dso_local i32 @free_DSAPublicKey(i32*) #1

declare dso_local i32 @DSA_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @decode_DSAParams(i32, i32, %struct.TYPE_20__*, i64*) #1

declare dso_local i32 @free_DSAParams(%struct.TYPE_20__*) #1

declare dso_local i32 @DSA_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_verify(i32, i64, i32, i8*, i32, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
