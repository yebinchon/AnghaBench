; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_crl_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_crl_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@X509_V_FLAG_USE_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_ERR_ERROR_IN_CRL_LAST_UPDATE_FIELD = common dso_local global i32 0, align 4
@X509_V_ERR_CRL_NOT_YET_VALID = common dso_local global i32 0, align 4
@X509_V_ERR_ERROR_IN_CRL_NEXT_UPDATE_FIELD = common dso_local global i32 0, align 4
@CRL_SCORE_TIME_DELTA = common dso_local global i32 0, align 4
@X509_V_ERR_CRL_HAS_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @check_crl_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_crl_time(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @X509_V_FLAG_USE_CHECK_TIME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32* %29, i32** %8, align 8
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @X509_V_FLAG_NO_CHECK_TIME, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %125

40:                                               ; preds = %30
  store i32* null, i32** %8, align 8
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @X509_CRL_get0_lastUpdate(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @X509_cmp_time(i64 %44, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %125

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32, i32* @X509_V_ERR_ERROR_IN_CRL_LAST_UPDATE_FIELD, align 4
  %56 = call i32 @verify_cb_crl(%struct.TYPE_6__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %125

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %125

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = load i32, i32* @X509_V_ERR_CRL_NOT_YET_VALID, align 4
  %70 = call i32 @verify_cb_crl(%struct.TYPE_6__* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %125

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @X509_CRL_get0_nextUpdate(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = call i64 @X509_CRL_get0_nextUpdate(i32* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @X509_cmp_time(i64 %80, i32* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %125

89:                                               ; preds = %85
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = load i32, i32* @X509_V_ERR_ERROR_IN_CRL_NEXT_UPDATE_FIELD, align 4
  %92 = call i32 @verify_cb_crl(%struct.TYPE_6__* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %125

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CRL_SCORE_TIME_DELTA, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %125

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = load i32, i32* @X509_V_ERR_CRL_HAS_EXPIRED, align 4
  %113 = call i32 @verify_cb_crl(%struct.TYPE_6__* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %125

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %99, %96
  br label %118

118:                                              ; preds = %117, %74
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %115, %109, %94, %88, %72, %66, %58, %52, %39
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @X509_cmp_time(i64, i32*) #1

declare dso_local i64 @X509_CRL_get0_lastUpdate(i32*) #1

declare dso_local i32 @verify_cb_crl(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @X509_CRL_get0_nextUpdate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
