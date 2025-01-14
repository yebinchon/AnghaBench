; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PATHNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"sysctl: kern.proc.pathname: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @procstat_getpathname_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getpathname_sysctl(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @CTL_KERN, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* @KERN_PROC, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @KERN_PROC_PATHNAME, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %21 = call i32 @nitems(i32* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @sysctl(i32* %19, i32 %21, i8* %22, i64* %9, i32* null, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ESRCH, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %26, %3
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
