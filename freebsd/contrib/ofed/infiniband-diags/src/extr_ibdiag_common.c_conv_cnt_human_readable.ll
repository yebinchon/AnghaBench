; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_conv_cnt_human_readable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_conv_cnt_human_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EB\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conv_cnt_human_readable(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sdiv i32 %12, 1024
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %17, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 1024
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %22, 1024
  store i32 %23, i32* %10, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = sitofp i32 %25 to float
  %27 = load float*, float** %6, align 8
  store float %26, float* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load float*, float** %6, align 8
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, 4.000000e+00
  store float %33, float* %31, align 4
  %34 = load float*, float** %6, align 8
  %35 = load float, float* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %35, %37
  %39 = fcmp ogt float %38, 1.024000e+03
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 1024
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %30
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %10, align 4
  %48 = sitofp i32 %47 to float
  %49 = load float*, float** %6, align 8
  %50 = load float, float* %49, align 4
  %51 = fdiv float %50, %48
  store float %51, float* %49, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %63 [
    i32 0, label %56
    i32 1, label %57
    i32 2, label %58
    i32 3, label %59
    i32 4, label %60
    i32 5, label %61
    i32 6, label %62
  ]

56:                                               ; preds = %54
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %74

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %74

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %74

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %74

60:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %74

61:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %74

62:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %74

63:                                               ; preds = %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %74

64:                                               ; preds = %46
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %73 [
    i32 0, label %66
    i32 1, label %67
    i32 2, label %68
    i32 3, label %69
    i32 4, label %70
    i32 5, label %71
    i32 6, label %72
  ]

66:                                               ; preds = %64
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %74

67:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %74

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %74

69:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %74

70:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %74

71:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %74

72:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %74

73:                                               ; preds = %64
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %74

74:                                               ; preds = %73, %72, %71, %70, %69, %68, %67, %66, %63, %62, %61, %60, %59, %58, %57, %56
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
