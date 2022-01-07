; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.timespec = type { i32, i64 }

@LIBUSB_DEBUG_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"libusb_wait_for_event enter\00", align 1
@NO_THREAD = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_wait_for_event(%struct.TYPE_6__* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call %struct.TYPE_6__* @GET_CONTEXT(%struct.TYPE_6__* %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %12 = call i32 @DPRINTF(%struct.TYPE_6__* %10, i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.timeval*, %struct.timeval** %5, align 8
  %14 = icmp eq %struct.timeval* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @pthread_cond_wait(i32* %17, i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NO_THREAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = call i8* (...) @pthread_self()
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %15
  store i32 0, i32* %3, align 4
  br label %85

32:                                               ; preds = %2
  %33 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %34 = call i32 @clock_gettime(i32 %33, %struct.timespec* %6)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %32
  %40 = load %struct.timeval*, %struct.timeval** %5, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load %struct.timeval*, %struct.timeval** %5, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 1000
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 1000000000
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1000000000
  store i32 %59, i32* %57, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %39
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = call i32 @pthread_cond_timedwait(i32* %65, i32* %67, %struct.timespec* %6)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NO_THREAD, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = call i8* (...) @pthread_self()
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %63
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %37, %31
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_6__* @GET_CONTEXT(%struct.TYPE_6__*) #1

declare dso_local i32 @DPRINTF(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i8* @pthread_self(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
