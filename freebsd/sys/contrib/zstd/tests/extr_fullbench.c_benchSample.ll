; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_benchSample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_benchSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\0AError: not enough memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" Sample %u bytes : \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, double, i32, i32)* @benchSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @benchSample(i32 %0, i64 %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 12, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load i8*, i8** %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load double, double* %9, align 8
  %23 = call i32 @RDG_genBuffer(i8* %20, i64 %21, double %22, double 0.000000e+00, i32 0)
  %24 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @benchMem(i32 %31, i8* %32, i64 %33, i32 %34, i32 %35)
  br label %52

37:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @benchMem(i32 %42, i8* %43, i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %38

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @free(i8* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %17
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @RDG_genBuffer(i8*, i64, double, double, i32) #1

declare dso_local i32 @benchMem(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
