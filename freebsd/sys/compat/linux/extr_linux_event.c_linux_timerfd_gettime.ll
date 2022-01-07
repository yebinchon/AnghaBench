; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_timerfd_gettime_args = type { i32, i32 }
%struct.l_itimerspec = type { i32 }
%struct.itimerspec = type { i32 }
%struct.timerfd = type { i32 }
%struct.file = type { i64, %struct.timerfd* }

@cap_read_rights = common dso_local global i32 0, align 4
@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_timerfd_gettime(%struct.thread* %0, %struct.linux_timerfd_gettime_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_timerfd_gettime_args*, align 8
  %6 = alloca %struct.l_itimerspec, align 4
  %7 = alloca %struct.itimerspec, align 4
  %8 = alloca %struct.timerfd*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_timerfd_gettime_args* %1, %struct.linux_timerfd_gettime_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = load %struct.linux_timerfd_gettime_args*, %struct.linux_timerfd_gettime_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_timerfd_gettime_args, %struct.linux_timerfd_gettime_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fget(%struct.thread* %11, i32 %14, i32* @cap_read_rights, %struct.file** %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load %struct.timerfd*, %struct.timerfd** %22, align 8
  store %struct.timerfd* %23, %struct.timerfd** %8, align 8
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DTYPE_LINUXTFD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load %struct.timerfd*, %struct.timerfd** %8, align 8
  %31 = icmp eq %struct.timerfd* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %20
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %10, align 4
  br label %52

34:                                               ; preds = %29
  %35 = load %struct.timerfd*, %struct.timerfd** %8, align 8
  %36 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.timerfd*, %struct.timerfd** %8, align 8
  %39 = call i32 @linux_timerfd_curval(%struct.timerfd* %38, %struct.itimerspec* %7)
  %40 = load %struct.timerfd*, %struct.timerfd** %8, align 8
  %41 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = call i32 @native_to_linux_itimerspec(%struct.l_itimerspec* %6, %struct.itimerspec* %7)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.linux_timerfd_gettime_args*, %struct.linux_timerfd_gettime_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_timerfd_gettime_args, %struct.linux_timerfd_gettime_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @copyout(%struct.l_itimerspec* %6, i32 %49, i32 4)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %34
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.file*, %struct.file** %9, align 8
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = call i32 @fdrop(%struct.file* %53, %struct.thread* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @linux_timerfd_curval(%struct.timerfd*, %struct.itimerspec*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @native_to_linux_itimerspec(%struct.l_itimerspec*, %struct.itimerspec*) #1

declare dso_local i32 @copyout(%struct.l_itimerspec*, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
