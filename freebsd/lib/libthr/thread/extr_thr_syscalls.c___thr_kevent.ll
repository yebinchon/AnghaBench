; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_syscalls.c___thr_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_syscalls.c___thr_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.timespec = type { i32 }
%struct.pthread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*)* @__thr_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__thr_kevent(i32 %0, %struct.kevent* %1, i32 %2, %struct.kevent* %3, i32 %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kevent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kevent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca %struct.pthread*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.kevent* %1, %struct.kevent** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.kevent* %3, %struct.kevent** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.timespec* %5, %struct.timespec** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.kevent*, %struct.kevent** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.kevent*, %struct.kevent** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.timespec*, %struct.timespec** %13, align 8
  %25 = call i32 @__sys_kevent(i32 %19, %struct.kevent* %20, i32 %21, %struct.kevent* %22, i32 %23, %struct.timespec* %24)
  store i32 %25, i32* %7, align 4
  br label %48

26:                                               ; preds = %6
  %27 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %27, %struct.pthread** %14, align 8
  %28 = load %struct.pthread*, %struct.pthread** %14, align 8
  %29 = call i32 @_thr_cancel_enter(%struct.pthread* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.kevent*, %struct.kevent** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.kevent*, %struct.kevent** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.timespec*, %struct.timespec** %13, align 8
  %36 = call i32 @__sys_kevent(i32 %30, %struct.kevent* %31, i32 %32, %struct.kevent* %33, i32 %34, %struct.timespec* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.pthread*, %struct.pthread** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %40, %26
  %44 = phi i1 [ false, %26 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @_thr_cancel_leave(%struct.pthread* %37, i32 %45)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @__sys_kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_cancel_enter(%struct.pthread*) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
