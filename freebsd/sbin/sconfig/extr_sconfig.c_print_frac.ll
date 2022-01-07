; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_frac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/-   \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"    -\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/.%-3d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" .%03d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".999\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @print_frac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_frac(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  br label %109

19:                                               ; preds = %10
  %20 = load i64, i64* %5, align 8
  %21 = uitofp i64 %20 to double
  %22 = fmul double 1.000000e+03, %21
  %23 = load i64, i64* %6, align 8
  %24 = uitofp i64 %23 to double
  %25 = fdiv double %22, %24
  %26 = fadd double 5.000000e-01, %25
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 1000
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @printf(i8* %34, i32 %35)
  br label %109

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 47, i32 32
  %42 = trunc i32 %41 to i8
  %43 = call i32 @putchar(i8 signext %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 1000000
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 500
  %49 = sdiv i32 %48, 1000
  %50 = mul nsw i32 %49, 1000
  store i32 %50, i32* %7, align 4
  br label %69

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 100000
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 50
  %57 = sdiv i32 %56, 100
  %58 = mul nsw i32 %57, 100
  store i32 %58, i32* %7, align 4
  br label %68

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 10000
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 5
  %65 = sdiv i32 %64, 10
  %66 = mul nsw i32 %65, 10
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %76 [
    i32 1000, label %71
    i32 10000, label %73
    i32 100000, label %74
    i32 1000000, label %75
  ]

71:                                               ; preds = %69
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %109

73:                                               ; preds = %69
  store i32 9990, i32* %7, align 4
  br label %76

74:                                               ; preds = %69
  store i32 99900, i32* %7, align 4
  br label %76

75:                                               ; preds = %69
  store i32 999000, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %75, %74, %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 10000
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %80, 1000
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %82, 10
  %84 = srem i32 %83, 100
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %84)
  br label %109

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 100000
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = sdiv i32 %90, 1000
  %92 = load i32, i32* %7, align 4
  %93 = sdiv i32 %92, 100
  %94 = srem i32 %93, 10
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %91, i32 %94)
  br label %108

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 1000000
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 1000
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %107

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = sdiv i32 %104, 1000
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %13, %30, %71, %108, %79
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
