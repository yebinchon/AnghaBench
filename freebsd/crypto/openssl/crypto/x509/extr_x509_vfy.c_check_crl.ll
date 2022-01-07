; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_crl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_22__*, i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER = common dso_local global i32 0, align 4
@EXFLAG_KUSAGE = common dso_local global i32 0, align 4
@KU_CRL_SIGN = common dso_local global i32 0, align 4
@X509_V_ERR_KEYUSAGE_NO_CRL_SIGN = common dso_local global i32 0, align 4
@CRL_SCORE_SCOPE = common dso_local global i32 0, align 4
@X509_V_ERR_DIFFERENT_CRL_SCOPE = common dso_local global i32 0, align 4
@CRL_SCORE_SAME_PATH = common dso_local global i32 0, align 4
@X509_V_ERR_CRL_PATH_VALIDATION_ERROR = common dso_local global i32 0, align 4
@IDP_INVALID = common dso_local global i32 0, align 4
@X509_V_ERR_INVALID_EXTENSION = common dso_local global i32 0, align 4
@CRL_SCORE_TIME = common dso_local global i32 0, align 4
@X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_CRL_SIGNATURE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @check_crl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_crl(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sk_X509_num(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = icmp ne %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %6, align 8
  br label %60

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = call %struct.TYPE_22__* @sk_X509_value(i32 %34, i32 %36)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %6, align 8
  br label %59

38:                                               ; preds = %27
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.TYPE_22__* @sk_X509_value(i32 %41, i32 %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %6, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*)** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = call i32 %46(%struct.TYPE_20__* %47, %struct.TYPE_22__* %48, %struct.TYPE_22__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = load i32, i32* @X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER, align 4
  %55 = call i32 @verify_cb_crl(%struct.TYPE_20__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %194

58:                                               ; preds = %52, %38
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %23
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = icmp eq %struct.TYPE_22__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %194

64:                                               ; preds = %60
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %136, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EXFLAG_KUSAGE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @KU_CRL_SIGN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = load i32, i32* @X509_V_ERR_KEYUSAGE_NO_CRL_SIGN, align 4
  %86 = call i32 @verify_cb_crl(%struct.TYPE_20__* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %194

89:                                               ; preds = %83, %76, %69
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CRL_SCORE_SCOPE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = load i32, i32* @X509_V_ERR_DIFFERENT_CRL_SCOPE, align 4
  %99 = call i32 @verify_cb_crl(%struct.TYPE_20__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %194

102:                                              ; preds = %96, %89
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CRL_SCORE_SAME_PATH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = call i64 @check_crl_path(%struct.TYPE_20__* %110, %struct.TYPE_22__* %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = load i32, i32* @X509_V_ERR_CRL_PATH_VALIDATION_ERROR, align 4
  %119 = call i32 @verify_cb_crl(%struct.TYPE_20__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %194

122:                                              ; preds = %116, %109, %102
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IDP_INVALID, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = load i32, i32* @X509_V_ERR_INVALID_EXTENSION, align 4
  %132 = call i32 @verify_cb_crl(%struct.TYPE_20__* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %194

135:                                              ; preds = %129, %122
  br label %136

136:                                              ; preds = %135, %64
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CRL_SCORE_TIME, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = call i32 @check_crl_time(%struct.TYPE_20__* %144, %struct.TYPE_21__* %145, i32 1)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %194

149:                                              ; preds = %143, %136
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %151 = call i32* @X509_get0_pubkey(%struct.TYPE_22__* %150)
  store i32* %151, i32** %7, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = load i32, i32* @X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY, align 4
  %157 = call i32 @verify_cb_crl(%struct.TYPE_20__* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %194

160:                                              ; preds = %154, %149
  %161 = load i32*, i32** %7, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @X509_CRL_check_suiteb(%struct.TYPE_21__* %164, i32* %165, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @X509_V_OK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %163
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @verify_cb_crl(%struct.TYPE_20__* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %194

181:                                              ; preds = %175, %163
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = call i64 @X509_CRL_verify(%struct.TYPE_21__* %182, i32* %183)
  %185 = icmp sle i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = load i32, i32* @X509_V_ERR_CRL_SIGNATURE_FAILURE, align 4
  %189 = call i32 @verify_cb_crl(%struct.TYPE_20__* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %194

192:                                              ; preds = %186, %181
  br label %193

193:                                              ; preds = %192, %160
  store i32 1, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %191, %180, %159, %148, %134, %121, %101, %88, %63, %57
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local %struct.TYPE_22__* @sk_X509_value(i32, i32) #1

declare dso_local i32 @verify_cb_crl(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @check_crl_path(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @check_crl_time(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32* @X509_get0_pubkey(%struct.TYPE_22__*) #1

declare dso_local i32 @X509_CRL_check_suiteb(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i64 @X509_CRL_verify(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
