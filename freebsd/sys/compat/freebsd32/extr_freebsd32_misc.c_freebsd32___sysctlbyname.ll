; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32___sysctlbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32___sysctlbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32___sysctlbyname_args = type { i32*, i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SCTL_MASK32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32___sysctlbyname(%struct.thread* %0, %struct.freebsd32___sysctlbyname_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32___sysctlbyname_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32___sysctlbyname_args* %1, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %10 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %16 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @fueword32(i32* %17, i64* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %6, align 8
  br label %21

20:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EFAULT, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %21
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %29 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %32 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %35 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %38 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %41 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SCTL_MASK32, align 4
  %44 = call i32 @kern___sysctlbyname(%struct.thread* %27, i32 %30, i32 %33, i32 %36, i64* %6, i32 %39, i32 %42, i64* %7, i32 %43, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %26
  %50 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %51 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.freebsd32___sysctlbyname_args*, %struct.freebsd32___sysctlbyname_args** %5, align 8
  %56 = getelementptr inbounds %struct.freebsd32___sysctlbyname_args, %struct.freebsd32___sysctlbyname_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @suword32(i32* %57, i64 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %47, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @fueword32(i32*, i64*) #1

declare dso_local i32 @kern___sysctlbyname(%struct.thread*, i32, i32, i32, i64*, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @suword32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
