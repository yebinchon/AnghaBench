; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.linux_timerfd_create_args = type { i32, i32 }
%struct.timerfd = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }

@LINUX_TFD_CREATE_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i64 0, align 8
@LINUX_TFD_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@M_EPOLL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timerfd\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@LINUX_O_NONBLOCK = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@DTYPE_LINUXTFD = common dso_local global i32 0, align 4
@timerfdops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_timerfd_create(%struct.thread* %0, %struct.linux_timerfd_create_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_timerfd_create_args*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.timerfd*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_timerfd_create_args* %1, %struct.linux_timerfd_create_args** %5, align 8
  %13 = load %struct.linux_timerfd_create_args*, %struct.linux_timerfd_create_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_timerfd_create_args, %struct.linux_timerfd_create_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LINUX_TFD_CREATE_FLAGS, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.linux_timerfd_create_args*, %struct.linux_timerfd_create_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_timerfd_create_args, %struct.linux_timerfd_create_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @linux_to_native_clockid(i64* %9, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  br label %115

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @CLOCK_REALTIME, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @CLOCK_MONOTONIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %115

41:                                               ; preds = %35, %31
  store i32 0, i32* %10, align 4
  %42 = load %struct.linux_timerfd_create_args*, %struct.linux_timerfd_create_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_timerfd_create_args, %struct.linux_timerfd_create_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LINUX_TFD_CLOEXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @O_CLOEXEC, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.filedesc*, %struct.filedesc** %56, align 8
  store %struct.filedesc* %57, %struct.filedesc** %6, align 8
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @falloc(%struct.thread* %58, %struct.file** %8, i32* %11, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  br label %115

65:                                               ; preds = %52
  %66 = load i32, i32* @M_EPOLL, align 4
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = load i32, i32* @M_ZERO, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.timerfd* @malloc(i32 24, i32 %66, i32 %69)
  store %struct.timerfd* %70, %struct.timerfd** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %73 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %75 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %74, i32 0, i32 0
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %76)
  %78 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %79 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %78, i32 0, i32 2
  %80 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %81 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %80, i32 0, i32 0
  %82 = call i32 @callout_init_mtx(i32* %79, i32* %81, i32 0)
  %83 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %84 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %87 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %86, i32 0, i32 0
  %88 = call i32 @knlist_init_mtx(i32* %85, i32* %87)
  %89 = load i32, i32* @FREAD, align 4
  store i32 %89, i32* %10, align 4
  %90 = load %struct.linux_timerfd_create_args*, %struct.linux_timerfd_create_args** %5, align 8
  %91 = getelementptr inbounds %struct.linux_timerfd_create_args, %struct.linux_timerfd_create_args* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @LINUX_O_NONBLOCK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %65
  %97 = load i32, i32* @FNONBLOCK, align 4
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %65
  %101 = load %struct.file*, %struct.file** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @DTYPE_LINUXTFD, align 4
  %104 = load %struct.timerfd*, %struct.timerfd** %7, align 8
  %105 = call i32 @finit(%struct.file* %101, i32 %102, i32 %103, %struct.timerfd* %104, i32* @timerfdops)
  %106 = load %struct.file*, %struct.file** %8, align 8
  %107 = load %struct.thread*, %struct.thread** %4, align 8
  %108 = call i32 @fdrop(%struct.file* %106, %struct.thread* %107)
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.thread*, %struct.thread** %4, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %100, %63, %39, %29, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @linux_to_native_clockid(i64*, i32) #1

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local %struct.timerfd* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.timerfd*, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
