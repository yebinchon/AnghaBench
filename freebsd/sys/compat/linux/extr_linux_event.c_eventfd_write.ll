; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.eventfd* }
%struct.eventfd = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXEFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@FNONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lefdwr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @eventfd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.eventfd*, align 8
  %13 = alloca i64, align 8
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
  br label %114

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
  br label %114

36:                                               ; preds = %28
  %37 = load %struct.uio*, %struct.uio** %8, align 8
  %38 = call i32 @uiomove(i64* %13, i32 8, %struct.uio* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %114

43:                                               ; preds = %36
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @UINT64_MAX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %6, align 4
  br label %114

49:                                               ; preds = %43
  %50 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %51 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %50, i32 0, i32 1
  %52 = call i32 @mtx_lock(i32* %51)
  br label %53

53:                                               ; preds = %88, %49
  %54 = load i64, i64* @UINT64_MAX, align 8
  %55 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %56 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load i64, i64* %13, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %53
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FNONBLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %70 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %69, i32 0, i32 1
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load %struct.uio*, %struct.uio** %8, align 8
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load i32, i32* @EAGAIN, align 4
  store i32 %78, i32* %6, align 4
  br label %114

79:                                               ; preds = %61
  %80 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %81 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %80, i32 0, i32 0
  %82 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %83 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %82, i32 0, i32 1
  %84 = load i32, i32* @PCATCH, align 4
  %85 = call i32 @mtx_sleep(i64* %81, i32* %83, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %53

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %96 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %100 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @KNOTE_LOCKED(i32* %101, i32 0)
  %103 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %104 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %103, i32 0, i32 2
  %105 = call i32 @selwakeup(%struct.TYPE_2__* %104)
  %106 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %107 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %106, i32 0, i32 0
  %108 = call i32 @wakeup(i64* %107)
  br label %109

109:                                              ; preds = %93, %90
  %110 = load %struct.eventfd*, %struct.eventfd** %12, align 8
  %111 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %110, i32 0, i32 1
  %112 = call i32 @mtx_unlock(i32* %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %68, %47, %41, %34, %26
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @uiomove(i64*, i32, %struct.uio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_sleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
