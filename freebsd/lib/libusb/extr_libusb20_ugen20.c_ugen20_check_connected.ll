; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_check_connected.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_check_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@USB_GET_PLUGTIME = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_NO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*)* @ugen20_check_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_check_connected(%struct.libusb20_device* %0) #0 {
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %6 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @USB_GET_PLUGTIME, align 4
  %9 = call i32 @IOUSB(i32 %8)
  %10 = call i64 @ioctl(i32 %7, i32 %9, i64* %3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @LIBUSB20_ERROR_NO_DEVICE, align 4
  store i32 %13, i32* %4, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %16 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @LIBUSB20_ERROR_NO_DEVICE, align 4
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %21, %12
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
