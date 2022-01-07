; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_finddelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_finddelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"great circle distance %g km %g miles\0A\00", align 1
@MILE = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"tried %d hop%s, no good\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%d hop%s okay, wave angle is %g\0A\00", align 1
@RADPERDEG = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, double, double*)* @finddelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finddelay(double %0, double %1, double %2, double %3, double %4, double* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double* %5, double** %12, align 8
  %16 = load double, double* %7, align 8
  %17 = load double, double* %8, align 8
  %18 = load double, double* %9, align 8
  %19 = load double, double* %10, align 8
  %20 = call double @greatcircle(double %16, double %17, double %18, double %19)
  store double %20, double* %13, align 8
  %21 = load i64, i64* @debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load double, double* %13, align 8
  %25 = fptosi double %24 to i32
  %26 = load double, double* %13, align 8
  %27 = load double, double* @MILE, align 8
  %28 = fdiv double %26, %27
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25, double %28)
  br label %30

30:                                               ; preds = %23, %6
  store i32 1, i32* %15, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load double, double* %13, align 8
  %33 = load double, double* %11, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call double @waveangle(double %32, double %33, i32 %34)
  store double %35, double* %14, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i64, i64* @debug, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 1
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %45)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i64, i64* @debug, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = load double, double* %14, align 8
  %60 = load double, double* @RADPERDEG, align 8
  %61 = fdiv double %59, %60
  %62 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %54, i8* %58, double %61)
  br label %63

63:                                               ; preds = %53, %50
  %64 = load double, double* %13, align 8
  %65 = load double, double* %11, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call double @propdelay(double %64, double %65, i32 %66)
  %68 = load double*, double** %12, align 8
  store double %67, double* %68, align 8
  %69 = load i32, i32* %15, align 4
  ret i32 %69
}

declare dso_local double @greatcircle(double, double, double, double) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local double @waveangle(double, double, i32) #1

declare dso_local double @propdelay(double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
