; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_iface_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_iface_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_dev_get_iface_desc(%struct.libusb20_device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %12
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %21 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.libusb20_device*, i64, i8*, i64)**
  %25 = load i32 (%struct.libusb20_device*, i64, i8*, i64)*, i32 (%struct.libusb20_device*, i64, i8*, i64)** %24, align 8
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 %25(%struct.libusb20_device* %26, i64 %27, i8* %28, i64 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %17, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
