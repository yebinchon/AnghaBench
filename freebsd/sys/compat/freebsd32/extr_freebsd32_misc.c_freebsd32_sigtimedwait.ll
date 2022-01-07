; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sigtimedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sigtimedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.freebsd32_sigtimedwait_args = type { i32, i64, i64 }
%struct.timespec32 = type { i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.siginfo32 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sigtimedwait(%struct.thread* %0, %struct.freebsd32_sigtimedwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sigtimedwait_args*, align 8
  %6 = alloca %struct.timespec32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca %struct.siginfo32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sigtimedwait_args* %1, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %13 = load %struct.freebsd32_sigtimedwait_args*, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %14 = getelementptr inbounds %struct.freebsd32_sigtimedwait_args, %struct.freebsd32_sigtimedwait_args* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.freebsd32_sigtimedwait_args*, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %19 = getelementptr inbounds %struct.freebsd32_sigtimedwait_args, %struct.freebsd32_sigtimedwait_args* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @copyin(i64 %20, %struct.timespec32* %6, i32 8)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  br label %34

33:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.freebsd32_sigtimedwait_args*, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %36 = getelementptr inbounds %struct.freebsd32_sigtimedwait_args, %struct.freebsd32_sigtimedwait_args* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @copyin(i64 %37, %struct.timespec32* %9, i32 8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %34
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load %struct.timespec*, %struct.timespec** %8, align 8
  %46 = bitcast %struct.timespec32* %9 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i32 @kern_sigtimedwait(%struct.thread* %44, i64 %47, %struct.TYPE_3__* %10, %struct.timespec* %45)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %43
  %54 = load %struct.freebsd32_sigtimedwait_args*, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %55 = getelementptr inbounds %struct.freebsd32_sigtimedwait_args, %struct.freebsd32_sigtimedwait_args* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %60 = call i32 @siginfo_to_siginfo32(i32* %59, %struct.siginfo32* %11)
  %61 = load %struct.freebsd32_sigtimedwait_args*, %struct.freebsd32_sigtimedwait_args** %5, align 8
  %62 = getelementptr inbounds %struct.freebsd32_sigtimedwait_args, %struct.freebsd32_sigtimedwait_args* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @copyout(%struct.siginfo32* %11, i32 %63, i32 4)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.thread*, %struct.thread** %4, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %51, %41, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @copyin(i64, %struct.timespec32*, i32) #1

declare dso_local i32 @kern_sigtimedwait(%struct.thread*, i64, %struct.TYPE_3__*, %struct.timespec*) #1

declare dso_local i32 @siginfo_to_siginfo32(i32*, %struct.siginfo32*) #1

declare dso_local i32 @copyout(%struct.siginfo32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
