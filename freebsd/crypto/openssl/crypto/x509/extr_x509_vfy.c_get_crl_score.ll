; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_get_crl_score.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_get_crl_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }

@IDP_INVALID = common dso_local global i32 0, align 4
@X509_V_FLAG_EXTENDED_CRL_SUPPORT = common dso_local global i32 0, align 4
@IDP_INDIRECT = common dso_local global i32 0, align 4
@IDP_REASONS = common dso_local global i32 0, align 4
@CRL_SCORE_ISSUER_NAME = common dso_local global i32 0, align 4
@EXFLAG_CRITICAL = common dso_local global i32 0, align 4
@CRL_SCORE_NOCRITICAL = common dso_local global i32 0, align 4
@CRL_SCORE_TIME = common dso_local global i32 0, align 4
@CRL_SCORE_AKID = common dso_local global i32 0, align 4
@CRL_SCORE_SCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32**, i32*, %struct.TYPE_14__*, i32*)* @get_crl_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_crl_score(%struct.TYPE_13__* %0, i32** %1, i32* %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IDP_INVALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %143

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @X509_V_FLAG_EXTENDED_CRL_SUPPORT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IDP_INDIRECT, align 4
  %38 = load i32, i32* @IDP_REASONS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %143

43:                                               ; preds = %33
  br label %69

44:                                               ; preds = %24
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IDP_REASONS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %143

60:                                               ; preds = %51
  br label %68

61:                                               ; preds = %44
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %143

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @X509_get_issuer_name(i32* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = call i32 @X509_CRL_get_issuer(%struct.TYPE_14__* %72)
  %74 = call i64 @X509_NAME_cmp(i32 %71, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IDP_INDIRECT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %143

84:                                               ; preds = %76
  br label %89

85:                                               ; preds = %69
  %86 = load i32, i32* @CRL_SCORE_ISSUER_NAME, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EXFLAG_CRITICAL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @CRL_SCORE_NOCRITICAL, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = call i64 @check_crl_time(%struct.TYPE_13__* %101, %struct.TYPE_14__* %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @CRL_SCORE_TIME, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = load i32**, i32*** %8, align 8
  %113 = call i32 @crl_akid_check(%struct.TYPE_13__* %110, %struct.TYPE_14__* %111, i32** %112, i32* %12)
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @CRL_SCORE_AKID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %143

119:                                              ; preds = %109
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @crl_crldp_check(i32* %120, %struct.TYPE_14__* %121, i32 %122, i32* %14)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %143

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* @CRL_SCORE_SCOPE, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %132, %119
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %131, %118, %83, %66, %59, %42, %23
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @X509_NAME_cmp(i32, i32) #1

declare dso_local i32 @X509_get_issuer_name(i32*) #1

declare dso_local i32 @X509_CRL_get_issuer(%struct.TYPE_14__*) #1

declare dso_local i64 @check_crl_time(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @crl_akid_check(%struct.TYPE_13__*, %struct.TYPE_14__*, i32**, i32*) #1

declare dso_local i64 @crl_crldp_check(i32*, %struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
