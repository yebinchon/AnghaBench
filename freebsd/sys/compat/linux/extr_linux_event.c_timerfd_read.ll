; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_timerfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.timerfd* }
%struct.timerfd = type { i64, i32, i64 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ltfdrd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @timerfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.timerfd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = load %struct.timerfd*, %struct.timerfd** %16, align 8
  store %struct.timerfd* %17, %struct.timerfd** %12, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DTYPE_LINUXTFD, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %25 = icmp eq %struct.timerfd* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %5
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %100

28:                                               ; preds = %23
  %29 = load %struct.uio*, %struct.uio** %8, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %100

36:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %37 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %38 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %37, i32 0, i32 1
  %39 = call i32 @mtx_lock(i32* %38)
  br label %40

40:                                               ; preds = %78, %36
  %41 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %42 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %47 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %49 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %48, i32 0, i32 1
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i32, i32* @ECANCELED, align 4
  store i32 %51, i32* %6, align 4
  br label %100

52:                                               ; preds = %40
  %53 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %54 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FNONBLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %66 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %65, i32 0, i32 1
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = load i32, i32* @EAGAIN, align 4
  store i32 %68, i32* %6, align 4
  br label %100

69:                                               ; preds = %57
  %70 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %71 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %70, i32 0, i32 0
  %72 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %73 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %72, i32 0, i32 1
  %74 = load i32, i32* @PCATCH, align 4
  %75 = call i32 @mtx_sleep(i64* %71, i32* %73, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %40

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %85 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  %87 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %88 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %90 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %89, i32 0, i32 1
  %91 = call i32 @mtx_unlock(i32* %90)
  %92 = load %struct.uio*, %struct.uio** %8, align 8
  %93 = call i32 @uiomove(i64* %13, i32 8, %struct.uio* %92)
  store i32 %93, i32* %14, align 4
  br label %98

94:                                               ; preds = %80
  %95 = load %struct.timerfd*, %struct.timerfd** %12, align 8
  %96 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %95, i32 0, i32 1
  %97 = call i32 @mtx_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %83
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %64, %45, %34, %26
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_sleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @uiomove(i64*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
