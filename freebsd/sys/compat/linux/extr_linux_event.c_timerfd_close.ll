; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32*, %struct.timerfd* }
%struct.timerfd = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@M_EPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.thread*)* @timerfd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_close(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.timerfd*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 2
  %9 = load %struct.timerfd*, %struct.timerfd** %8, align 8
  store %struct.timerfd* %9, %struct.timerfd** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DTYPE_LINUXTFD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %17 = icmp eq %struct.timerfd* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %15
  %21 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %22 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @timespecclear(i32* %23)
  %25 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %26 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @timespecclear(i32* %27)
  %29 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %30 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %29, i32 0, i32 0
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %33 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %32, i32 0, i32 2
  %34 = call i32 @callout_drain(i32* %33)
  %35 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %36 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %39 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %38, i32 0, i32 1
  %40 = call i32 @seldrain(%struct.TYPE_4__* %39)
  %41 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %42 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @knlist_destroy(i32* %43)
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 1
  store i32* @badfileops, i32** %46, align 8
  %47 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %48 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %47, i32 0, i32 0
  %49 = call i32 @mtx_destroy(i32* %48)
  %50 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %51 = load i32, i32* @M_EPOLL, align 4
  %52 = call i32 @free(%struct.timerfd* %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %20, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @seldrain(%struct.TYPE_4__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.timerfd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
