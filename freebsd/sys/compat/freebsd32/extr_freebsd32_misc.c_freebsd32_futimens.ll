; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_futimens.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_futimens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_futimens_args = type { i32, i32* }
%struct.timespec32 = type { i32 }
%struct.timespec = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_futimens(%struct.thread* %0, %struct.freebsd32_futimens_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_futimens_args*, align 8
  %6 = alloca [2 x %struct.timespec32], align 4
  %7 = alloca [2 x %struct.timespec], align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_futimens_args* %1, %struct.freebsd32_futimens_args** %5, align 8
  %10 = load %struct.freebsd32_futimens_args*, %struct.freebsd32_futimens_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_futimens_args, %struct.freebsd32_futimens_args* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load %struct.freebsd32_futimens_args*, %struct.freebsd32_futimens_args** %5, align 8
  %16 = getelementptr inbounds %struct.freebsd32_futimens_args, %struct.freebsd32_futimens_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds [2 x %struct.timespec32], [2 x %struct.timespec32]* %6, i64 0, i64 0
  %19 = call i32 @copyin(i32* %17, %struct.timespec32* %18, i32 8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %14
  %25 = getelementptr inbounds [2 x %struct.timespec32], [2 x %struct.timespec32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %27 = load i32, i32* @tv_sec, align 4
  %28 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %25, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CP(i32 %29, i32 %31, i32 %27)
  %33 = getelementptr inbounds [2 x %struct.timespec32], [2 x %struct.timespec32]* %6, i64 0, i64 0
  %34 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %35 = load i32, i32* @tv_nsec, align 4
  %36 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %33, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CP(i32 %37, i32 %39, i32 %35)
  %41 = getelementptr inbounds [2 x %struct.timespec32], [2 x %struct.timespec32]* %6, i64 0, i64 1
  %42 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %43 = load i32, i32* @tv_sec, align 4
  %44 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %41, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CP(i32 %45, i32 %47, i32 %43)
  %49 = getelementptr inbounds [2 x %struct.timespec32], [2 x %struct.timespec32]* %6, i64 0, i64 1
  %50 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %51 = load i32, i32* @tv_nsec, align 4
  %52 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %49, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %50, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CP(i32 %53, i32 %55, i32 %51)
  %57 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  store %struct.timespec* %57, %struct.timespec** %8, align 8
  br label %59

58:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = load %struct.freebsd32_futimens_args*, %struct.freebsd32_futimens_args** %5, align 8
  %62 = getelementptr inbounds %struct.freebsd32_futimens_args, %struct.freebsd32_futimens_args* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.timespec*, %struct.timespec** %8, align 8
  %65 = load i32, i32* @UIO_SYSSPACE, align 4
  %66 = call i32 @kern_futimens(%struct.thread* %60, i32 %63, %struct.timespec* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @copyin(i32*, %struct.timespec32*, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @kern_futimens(%struct.thread*, i32, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
