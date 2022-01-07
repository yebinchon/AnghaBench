; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_create.c_thread_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_create.c_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i8*, i32, i32 (i32)*, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@THR_CREATE_SUSPENDED = common dso_local global i64 0, align 8
@PTHREAD_CANCELED = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Thread has resumed after exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @thread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_start(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %4 = load %struct.pthread*, %struct.pthread** %2, align 8
  %5 = getelementptr inbounds %struct.pthread, %struct.pthread* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @THR_CREATE_SUSPENDED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pthread*, %struct.pthread** %2, align 8
  %12 = getelementptr inbounds %struct.pthread, %struct.pthread* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.pthread*, %struct.pthread** %2, align 8
  %16 = call i32 @THR_LOCK(%struct.pthread* %15)
  %17 = load %struct.pthread*, %struct.pthread** %2, align 8
  %18 = call i32 @THR_UNLOCK(%struct.pthread* %17)
  %19 = load %struct.pthread*, %struct.pthread** %2, align 8
  %20 = getelementptr inbounds %struct.pthread, %struct.pthread* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @PTHREAD_CANCELED, align 4
  %25 = call i32 @_pthread_exit(i32 %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.pthread*, %struct.pthread** %2, align 8
  %28 = getelementptr inbounds %struct.pthread, %struct.pthread* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @THR_CREATE_SUSPENDED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @SIG_SETMASK, align 4
  %35 = call i32 @__sys_sigprocmask(i32 %34, i32* %3, i32* null)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.pthread*, %struct.pthread** %2, align 8
  %38 = getelementptr inbounds %struct.pthread, %struct.pthread* %37, i32 0, i32 2
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.pthread*, %struct.pthread** %2, align 8
  %41 = getelementptr inbounds %struct.pthread, %struct.pthread* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  %44 = call i32 @_pthread_exit(i32 %43)
  %45 = call i32 @PANIC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @THR_LOCK(%struct.pthread*) #1

declare dso_local i32 @THR_UNLOCK(%struct.pthread*) #1

declare dso_local i32 @_pthread_exit(i32) #1

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @PANIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
