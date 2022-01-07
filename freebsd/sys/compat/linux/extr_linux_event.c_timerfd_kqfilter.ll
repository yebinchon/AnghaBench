; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.timerfd* }
%struct.timerfd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.knote = type { i64, %struct.timerfd*, i32* }

@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i64 0, align 8
@timerfd_rfiltops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.knote*)* @timerfd_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.timerfd*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
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
  br label %40

20:                                               ; preds = %15
  %21 = load %struct.knote*, %struct.knote** %5, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EVFILT_READ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.knote*, %struct.knote** %5, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 2
  store i32* @timerfd_rfiltops, i32** %28, align 8
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %33 = load %struct.knote*, %struct.knote** %5, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 1
  store %struct.timerfd* %32, %struct.timerfd** %34, align 8
  %35 = load %struct.timerfd*, %struct.timerfd** %6, align 8
  %36 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.knote*, %struct.knote** %5, align 8
  %39 = call i32 @knlist_add(i32* %37, %struct.knote* %38, i32 0)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %29, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
