; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.eventfd* }
%struct.eventfd = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXEFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lefdrd\00", align 1
@LINUX_EFD_SEMAPHORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @eventfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.eventfd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = load %struct.eventfd*, %struct.eventfd** %16, align 8
  store %struct.eventfd* %17, %struct.eventfd** %12, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DTYPE_LINUXEFD, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %25 = icmp eq %struct.eventfd* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %5
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %111

28:                                               ; preds = %23
  %29 = load %struct.uio*, %struct.uio** %8, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %111

36:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %37 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %38 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %37, i32 0, i32 2
  %39 = call i32 @mtx_lock(i32* %38)
  br label %40

40:                                               ; preds = %66, %36
  %41 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %42 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FNONBLOCK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %54 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %53, i32 0, i32 2
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load i32, i32* @EAGAIN, align 4
  store i32 %56, i32* %6, align 4
  br label %111

57:                                               ; preds = %45
  %58 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %59 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %58, i32 0, i32 0
  %60 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %61 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %60, i32 0, i32 2
  %62 = load i32, i32* @PCATCH, align 4
  %63 = call i32 @mtx_sleep(i32* %59, i32* %61, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %40

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %68
  %72 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %73 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LINUX_EFD_SEMAPHORE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  %79 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %80 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %89

83:                                               ; preds = %71
  %84 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %85 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %13, align 4
  %87 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %88 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %91 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @KNOTE_LOCKED(i32* %92, i32 0)
  %94 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %95 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %94, i32 0, i32 3
  %96 = call i32 @selwakeup(%struct.TYPE_2__* %95)
  %97 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %98 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %97, i32 0, i32 0
  %99 = call i32 @wakeup(i32* %98)
  %100 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %101 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %100, i32 0, i32 2
  %102 = call i32 @mtx_unlock(i32* %101)
  %103 = load %struct.uio*, %struct.uio** %8, align 8
  %104 = call i32 @uiomove(i32* %13, i32 4, %struct.uio* %103)
  store i32 %104, i32* %14, align 4
  br label %109

105:                                              ; preds = %68
  %106 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %107 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %106, i32 0, i32 2
  %108 = call i32 @mtx_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %89
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %52, %34, %26
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
