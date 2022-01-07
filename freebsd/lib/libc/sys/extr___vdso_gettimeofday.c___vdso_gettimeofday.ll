; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr___vdso_gettimeofday.c___vdso_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr___vdso_gettimeofday.c___vdso_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.timeval = type { i32 }
%struct.timezone = type { i32 }
%struct.bintime = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@tk = common dso_local global %struct.TYPE_4__* null, align 8
@VDSO_TK_VER_CURR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vdso_gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timezone*, align 8
  %6 = alloca %struct.bintime, align 4
  %7 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timezone* %1, %struct.timezone** %5, align 8
  %8 = load %struct.timezone*, %struct.timezone** %5, align 8
  %9 = icmp ne %struct.timezone* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOSYS, align 4
  store i32 %11, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tk, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = call i32 @__vdso_gettimekeep(%struct.TYPE_4__** @tk)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tk, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @ENOSYS, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tk, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VDSO_TK_VER_CURR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOSYS, align 4
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tk, align 8
  %35 = call i32 @binuptime(%struct.bintime* %6, %struct.TYPE_4__* %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.timeval*, %struct.timeval** %4, align 8
  %42 = call i32 @bintime2timeval(%struct.bintime* %6, %struct.timeval* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %38, %31, %22, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @__vdso_gettimekeep(%struct.TYPE_4__**) #1

declare dso_local i32 @binuptime(%struct.bintime*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bintime2timeval(%struct.bintime*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
