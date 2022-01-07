; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_match_keys_rsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_match_keys_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*)* @match_keys_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_keys_rsa(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %210

32:                                               ; preds = %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @RSA_get0_key(i32* %37, i32* null, i32* null, i32** %10)
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @RSA_get0_factors(i32* %39, i32** %11, i32** %12)
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @RSA_get0_crt_params(i32* %41, i32** %13, i32** %14, i32** %15)
  %43 = load i32*, i32** %10, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %32
  store i32 0, i32* %3, align 4
  br label %210

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.TYPE_18__* @_hx509_get_cert(i32 %53)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %6, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %7, align 8
  %58 = call i32* (...) @RSA_new()
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %210

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 8
  %72 = call i32 @decode_RSAPublicKey(i32 %66, i32 %71, %struct.TYPE_17__* %8, i64* %24)
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* %25, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @RSA_free(i32* %76)
  store i32 0, i32* %3, align 4
  br label %210

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %80 = call i32* @heim_int2BN(i32* %79)
  store i32* %80, i32** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %82 = call i32* @heim_int2BN(i32* %81)
  store i32* %82, i32** %23, align 8
  %83 = call i32 @free_RSAPublicKey(%struct.TYPE_17__* %8)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32* @BN_dup(i32* %84)
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @BN_dup(i32* %86)
  store i32* %87, i32** %17, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @BN_dup(i32* %88)
  store i32* %89, i32** %18, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = call i32* @BN_dup(i32* %90)
  store i32* %91, i32** %19, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i32* @BN_dup(i32* %92)
  store i32* %93, i32** %20, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i32* @BN_dup(i32* %94)
  store i32* %95, i32** %21, align 8
  %96 = load i32*, i32** %22, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %119, label %98

98:                                               ; preds = %78
  %99 = load i32*, i32** %23, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** %16, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %119, label %104

104:                                              ; preds = %101
  %105 = load i32*, i32** %17, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %18, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** %19, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** %20, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %21, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %138

119:                                              ; preds = %116, %113, %110, %107, %104, %101, %98, %78
  %120 = load i32*, i32** %22, align 8
  %121 = call i32 @BN_free(i32* %120)
  %122 = load i32*, i32** %23, align 8
  %123 = call i32 @BN_free(i32* %122)
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @BN_free(i32* %124)
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 @BN_free(i32* %126)
  %128 = load i32*, i32** %18, align 8
  %129 = call i32 @BN_free(i32* %128)
  %130 = load i32*, i32** %19, align 8
  %131 = call i32 @BN_free(i32* %130)
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @BN_free(i32* %132)
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @BN_free(i32* %134)
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @RSA_free(i32* %136)
  store i32 0, i32* %3, align 4
  br label %210

138:                                              ; preds = %116
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32*, i32** %22, align 8
  %142 = load i32*, i32** %23, align 8
  %143 = call i32 @RSA_set0_key(i32* %139, i32* %140, i32* %141, i32* %142)
  store i32 %143, i32* %25, align 4
  %144 = load i32, i32* %25, align 4
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %165

146:                                              ; preds = %138
  %147 = load i32*, i32** %22, align 8
  %148 = call i32 @BN_free(i32* %147)
  %149 = load i32*, i32** %23, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32*, i32** %17, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32*, i32** %19, align 8
  %158 = call i32 @BN_free(i32* %157)
  %159 = load i32*, i32** %20, align 8
  %160 = call i32 @BN_free(i32* %159)
  %161 = load i32*, i32** %21, align 8
  %162 = call i32 @BN_free(i32* %161)
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @RSA_free(i32* %163)
  store i32 0, i32* %3, align 4
  br label %210

165:                                              ; preds = %138
  %166 = load i32*, i32** %9, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = load i32*, i32** %18, align 8
  %169 = call i32 @RSA_set0_factors(i32* %166, i32* %167, i32* %168)
  store i32 %169, i32* %25, align 4
  %170 = load i32, i32* %25, align 4
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load i32*, i32** %17, align 8
  %174 = call i32 @BN_free(i32* %173)
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @BN_free(i32* %175)
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @BN_free(i32* %177)
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @BN_free(i32* %179)
  %181 = load i32*, i32** %21, align 8
  %182 = call i32 @BN_free(i32* %181)
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @RSA_free(i32* %183)
  store i32 0, i32* %3, align 4
  br label %210

185:                                              ; preds = %165
  %186 = load i32*, i32** %9, align 8
  %187 = load i32*, i32** %19, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = load i32*, i32** %21, align 8
  %190 = call i32 @RSA_set0_crt_params(i32* %186, i32* %187, i32* %188, i32* %189)
  store i32 %190, i32* %25, align 4
  %191 = load i32, i32* %25, align 4
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load i32*, i32** %19, align 8
  %195 = call i32 @BN_free(i32* %194)
  %196 = load i32*, i32** %20, align 8
  %197 = call i32 @BN_free(i32* %196)
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @BN_free(i32* %198)
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @RSA_free(i32* %200)
  store i32 0, i32* %3, align 4
  br label %210

202:                                              ; preds = %185
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @RSA_check_key(i32* %203)
  store i32 %204, i32* %25, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @RSA_free(i32* %205)
  %207 = load i32, i32* %25, align 4
  %208 = icmp eq i32 %207, 1
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %202, %193, %172, %146, %119, %75, %61, %51, %31
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @RSA_get0_key(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @RSA_get0_factors(i32*, i32**, i32**) #1

declare dso_local i32 @RSA_get0_crt_params(i32*, i32**, i32**, i32**) #1

declare dso_local %struct.TYPE_18__* @_hx509_get_cert(i32) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @decode_RSAPublicKey(i32, i32, %struct.TYPE_17__*, i64*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32* @heim_int2BN(i32*) #1

declare dso_local i32 @free_RSAPublicKey(%struct.TYPE_17__*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_factors(i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_crt_params(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_check_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
