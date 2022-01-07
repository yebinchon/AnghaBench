; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getauxv_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getauxv_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_AUXV = common dso_local global i32 0, align 4
@PROC_AUXV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"sysctl: kern.proc.auxv: %d: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @procstat_getauxv_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @procstat_getauxv_sysctl(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @CTL_KERN, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32, i32* @KERN_PROC, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @KERN_PROC_AUXV, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @PROC_AUXV_MAX, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @malloc(i64 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, i32, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32* null, i32** %3, align 8
  br label %56

28:                                               ; preds = %2
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %31 = call i32 @nitems(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @sysctl(i32* %29, i32 %31, i32* %32, i64* %8, i32* null, i32 0)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ESRCH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EPERM, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 (i8*, i32, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %39, %35
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @free(i32* %48)
  store i32* null, i32** %3, align 8
  br label %56

50:                                               ; preds = %28
  %51 = load i64, i64* %8, align 8
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %50, %47, %24
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @warn(i8*, i32, ...) #1

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
