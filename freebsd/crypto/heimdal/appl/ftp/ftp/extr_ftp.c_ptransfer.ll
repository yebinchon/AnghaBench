; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_ptransfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_ptransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%ld bytes %s in %.3g seconds (%.*f %sbyte/s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptransfer(i8* %0, i64 %1, %struct.timeval* %2, %struct.timeval* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  %14 = load i64, i64* @verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %4
  %17 = load %struct.timeval*, %struct.timeval** %8, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.timeval*, %struct.timeval** %7, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.timeval*, %struct.timeval** %8, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.timeval*, %struct.timeval** %7, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1000000
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %16
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to double
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = fadd double %46, %50
  %52 = fptrunc double %51 to float
  store float %52, float* %10, align 4
  %53 = load i64, i64* %6, align 8
  %54 = sitofp i64 %53 to float
  %55 = load float, float* %10, align 4
  %56 = fcmp une float %55, 0.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load float, float* %10, align 4
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi float [ %58, %57 ], [ 1.000000e+00, %59 ]
  %62 = fdiv float %54, %61
  store float %62, float* %11, align 4
  %63 = load float, float* %11, align 4
  %64 = fcmp oge float %63, 0x4130000000000000
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load float, float* %11, align 4
  %67 = fdiv float %66, 0x4130000000000000
  store float %67, float* %11, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 2, i32* %12, align 4
  br label %76

68:                                               ; preds = %60
  %69 = load float, float* %11, align 4
  %70 = fcmp oge float %69, 1.024000e+03
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load float, float* %11, align 4
  %73 = fdiv float %72, 1.024000e+03
  store float %73, float* %11, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i32 1, i32* %12, align 4
  br label %75

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i64, i64* %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load float, float* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load float, float* %11, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %77, i8* %78, float %79, i32 %80, float %81, i8* %82)
  br label %84

84:                                               ; preds = %76, %4
  ret void
}

declare dso_local i32 @printf(i8*, i64, i8*, float, i32, float, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
