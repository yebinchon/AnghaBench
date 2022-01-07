; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.eventfd* }
%struct.eventfd = type { i64, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXEFD = common dso_local global i64 0, align 8
@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @eventfd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_poll(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.eventfd*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.eventfd*, %struct.eventfd** %13, align 8
  store %struct.eventfd* %14, %struct.eventfd** %10, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DTYPE_LINUXEFD, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %22 = icmp eq %struct.eventfd* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @POLLERR, align 4
  store i32 %24, i32* %5, align 4
  br label %84

25:                                               ; preds = %20
  %26 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %27 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %26, i32 0, i32 1
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %37 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @POLLIN, align 4
  %43 = load i32, i32* @POLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %40, %35, %25
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @POLLOUT, align 4
  %51 = load i32, i32* @POLLWRNORM, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32, i32* @UINT64_MAX, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %60 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @POLLOUT, align 4
  %66 = load i32, i32* @POLLWRNORM, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %63, %55, %48
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.thread*, %struct.thread** %9, align 8
  %76 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %77 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %76, i32 0, i32 2
  %78 = call i32 @selrecord(%struct.thread* %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.eventfd*, %struct.eventfd** %10, align 8
  %81 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %80, i32 0, i32 1
  %82 = call i32 @mtx_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
