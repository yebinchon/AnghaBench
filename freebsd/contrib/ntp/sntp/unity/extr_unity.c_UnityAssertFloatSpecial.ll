; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertFloatSpecial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertFloatSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UnityStrInf = common dso_local global i8* null, align 8
@UnityStrNegInf = common dso_local global i8* null, align 8
@UnityStrNaN = common dso_local global i8* null, align 8
@UnityStrDet = common dso_local global i8* null, align 8
@UNITY_SKIP_EXECUTION = common dso_local global i32 0, align 4
@f_zero = common dso_local global float 0.000000e+00, align 4
@UnityStrExpected = common dso_local global i8* null, align 8
@UnityStrNot = common dso_local global i8* null, align 8
@UnityStrWas = common dso_local global i8* null, align 8
@UNITY_FAIL_AND_BAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityAssertFloatSpecial(float %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %14 = load i8*, i8** @UnityStrInf, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** @UnityStrNegInf, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** @UnityStrNaN, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = load i8*, i8** @UnityStrDet, align 8
  store i8* %20, i8** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @UNITY_SKIP_EXECUTION, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %68 [
    i32 134, label %31
    i32 130, label %31
    i32 132, label %38
    i32 128, label %38
    i32 133, label %45
    i32 129, label %45
    i32 135, label %51
    i32 131, label %51
  ]

31:                                               ; preds = %4, %4
  %32 = load float, float* @f_zero, align 4
  %33 = fdiv float 1.000000e+00, %32
  %34 = load float, float* %5, align 4
  %35 = fcmp oeq float %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %11, align 4
  br label %69

38:                                               ; preds = %4, %4
  %39 = load float, float* @f_zero, align 4
  %40 = fdiv float -1.000000e+00, %39
  %41 = load float, float* %5, align 4
  %42 = fcmp oeq float %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %11, align 4
  br label %69

45:                                               ; preds = %4, %4
  %46 = load float, float* %5, align 4
  %47 = load float, float* %5, align 4
  %48 = fcmp oeq float %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  store i32 %50, i32* %11, align 4
  br label %69

51:                                               ; preds = %4, %4
  %52 = load float, float* %5, align 4
  %53 = load float, float* %5, align 4
  %54 = fcmp une float %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load float, float* @f_zero, align 4
  %57 = fdiv float 1.000000e+00, %56
  %58 = load float, float* %5, align 4
  %59 = fcmp oeq float %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load float, float* @f_zero, align 4
  %62 = fdiv float -1.000000e+00, %61
  %63 = load float, float* %5, align 4
  %64 = fcmp oeq float %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55, %51
  store i32 0, i32* %11, align 4
  br label %67

66:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %69

68:                                               ; preds = %4
  br label %69

69:                                               ; preds = %68, %67, %45, %38, %31
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @UnityTestResultsFailBegin(i32 %74)
  %76 = load i8*, i8** @UnityStrExpected, align 8
  %77 = call i32 @UnityPrint(i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** @UnityStrNot, align 8
  %82 = call i32 @UnityPrint(i8* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @UnityPrint(i8* %87)
  %89 = load i8*, i8** @UnityStrWas, align 8
  %90 = call i32 @UnityPrint(i8* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i8*, i8** @UnityStrNot, align 8
  %95 = call i32 @UnityPrint(i8* %94)
  br label %96

96:                                               ; preds = %93, %83
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @UnityPrint(i8* %100)
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @UnityAddMsgIfSpecified(i8* %102)
  %104 = load i32, i32* @UNITY_FAIL_AND_BAIL, align 4
  br label %105

105:                                              ; preds = %96, %69
  ret void
}

declare dso_local i32 @UnityTestResultsFailBegin(i32) #1

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @UnityAddMsgIfSpecified(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
