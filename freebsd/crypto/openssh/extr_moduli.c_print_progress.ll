; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_print_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_print_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_progress.time_start = internal global i64 0, align 8
@print_progress.time_prev = internal global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%.24s processed %lu in %s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%.24s processed %lu of %lu (%lu%%) in %s, ETA %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @print_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_progress(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = call i64 (...) @monotime()
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* @print_progress.time_start, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* @print_progress.time_prev, align 8
  store i64 %20, i64* @print_progress.time_start, align 8
  br label %80

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @print_progress.time_prev, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp slt i64 %24, 300
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %80

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* @print_progress.time_prev, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @print_progress.time_start, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sitofp i64 %41 to double
  %43 = load i64, i64* %10, align 8
  %44 = uitofp i64 %43 to double
  %45 = fdiv double %42, %44
  store double %45, double* %14, align 8
  %46 = call i32 @time(i64* %7)
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @ULONG_MAX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %27
  %51 = call i32 @ctime(i64* %7)
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @fmt_time(i64 %53)
  %55 = sext i32 %54 to i64
  %56 = call i32 (i8*, i32, i64, i64, ...) @logit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i64 %55)
  br label %80

57:                                               ; preds = %27
  %58 = load i64, i64* %10, align 8
  %59 = mul i64 100, %58
  %60 = load i64, i64* %9, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %12, align 8
  %62 = load double, double* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = uitofp i64 %63 to double
  %65 = fmul double %62, %64
  %66 = fptoui double %65 to i64
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @fmt_time(i64 %67)
  %69 = call i8* @xstrdup(i32 %68)
  store i8* %69, i8** %15, align 8
  %70 = call i32 @ctime(i64* %7)
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @fmt_time(i64 %74)
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 (i8*, i32, i64, i64, ...) @logit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %71, i64 %72, i64 %73, i32 %75, i8* %76)
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %57, %50, %26, %19
  ret void
}

declare dso_local i64 @monotime(...) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @logit(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @ctime(i64*) #1

declare dso_local i32 @fmt_time(i64) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
