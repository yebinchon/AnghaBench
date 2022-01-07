; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_prettyinterval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_prettyinterval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%um\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%uh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ud\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%uy\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64)* @prettyinterval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prettyinterval(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 45, i8* %12, align 1
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %4, align 8
  br label %86

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp sle i64 %17, 2048
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %4, align 8
  br label %86

26:                                               ; preds = %16
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 29
  %29 = sdiv i64 %28, 60
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %30, 300
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %4, align 8
  br label %86

39:                                               ; preds = %26
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 29
  %42 = sdiv i64 %41, 60
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sle i64 %43, 96
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %4, align 8
  br label %86

52:                                               ; preds = %39
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 11
  %55 = sdiv i64 %54, 24
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sle i64 %56, 999
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @snprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %5, align 8
  store i8* %64, i8** %4, align 8
  br label %86

65:                                               ; preds = %52
  %66 = load i64, i64* %7, align 8
  %67 = sitofp i64 %66 to double
  %68 = fdiv double %67, 3.652500e+02
  %69 = fadd double %68, 5.000000e-01
  %70 = fptosi double %69 to i64
  %71 = call i64 @floor(i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp sle i64 %72, 999
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @snprintf(i8* %75, i64 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** %5, align 8
  store i8* %80, i8** %4, align 8
  br label %86

81:                                               ; preds = %65
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @strlcpy(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %83)
  %85 = load i8*, i8** %5, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %81, %74, %58, %45, %32, %19, %10
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @floor(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
