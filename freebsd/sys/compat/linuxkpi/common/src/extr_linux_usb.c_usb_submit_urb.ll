; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_submit_urb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, %struct.usb_host_endpoint* }
%struct.usb_host_endpoint = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@bsd_urb_list = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_submit_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = icmp eq %struct.urb* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = call i64 @mtx_owned(i32* @Giant)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @mtx_lock(i32* @Giant)
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 2
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %25, align 8
  %27 = icmp eq %struct.usb_host_endpoint* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %86

31:                                               ; preds = %23
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load %struct.urb*, %struct.urb** %4, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 2
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %41, align 8
  store %struct.usb_host_endpoint* %42, %struct.usb_host_endpoint** %6, align 8
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %51 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %49, %39
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %58 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %57, i32 0, i32 1
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = load i32, i32* @bsd_urb_list, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(i32* %58, %struct.urb* %59, i32 %60)
  %62 = load i32, i32* @EINPROGRESS, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.urb*, %struct.urb** %4, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %67 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @usbd_transfer_start(i64 %70)
  %72 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %73 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @usbd_transfer_start(i64 %76)
  store i32 0, i32* %8, align 4
  br label %85

78:                                               ; preds = %49
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %56
  br label %86

86:                                               ; preds = %85, %36, %28
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @mtx_unlock(i32* @Giant)
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.urb*, i32) #1

declare dso_local i32 @usbd_transfer_start(i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
