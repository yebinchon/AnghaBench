; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sigwaitinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sigwaitinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.freebsd32_sigwaitinfo_args = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.siginfo32 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sigwaitinfo(%struct.thread* %0, %struct.freebsd32_sigwaitinfo_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sigwaitinfo_args*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.siginfo32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sigwaitinfo_args* %1, %struct.freebsd32_sigwaitinfo_args** %5, align 8
  %10 = load %struct.freebsd32_sigwaitinfo_args*, %struct.freebsd32_sigwaitinfo_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_sigwaitinfo_args, %struct.freebsd32_sigwaitinfo_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copyin(i32 %12, i32* %8, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @kern_sigtimedwait(%struct.thread* %19, i32 %20, %struct.TYPE_3__* %6, i32* null)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.freebsd32_sigwaitinfo_args*, %struct.freebsd32_sigwaitinfo_args** %5, align 8
  %28 = getelementptr inbounds %struct.freebsd32_sigwaitinfo_args, %struct.freebsd32_sigwaitinfo_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %33 = call i32 @siginfo_to_siginfo32(i32* %32, %struct.siginfo32* %7)
  %34 = load %struct.freebsd32_sigwaitinfo_args*, %struct.freebsd32_sigwaitinfo_args** %5, align 8
  %35 = getelementptr inbounds %struct.freebsd32_sigwaitinfo_args, %struct.freebsd32_sigwaitinfo_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @copyout(%struct.siginfo32* %7, i32 %36, i32 4)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %24, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @kern_sigtimedwait(%struct.thread*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @siginfo_to_siginfo32(i32*, %struct.siginfo32*) #1

declare dso_local i32 @copyout(%struct.siginfo32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
