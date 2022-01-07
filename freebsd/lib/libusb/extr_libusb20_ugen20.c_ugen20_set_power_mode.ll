; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@USB_POWER_MODE_OFF = common dso_local global i32 0, align 4
@USB_POWER_MODE_ON = common dso_local global i32 0, align 4
@USB_POWER_MODE_SAVE = common dso_local global i32 0, align 4
@USB_POWER_MODE_SUSPEND = common dso_local global i32 0, align 4
@USB_POWER_MODE_RESUME = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@USB_SET_POWER_MODE = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*, i32)* @ugen20_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_set_power_mode(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %18 [
    i32 132, label %8
    i32 131, label %10
    i32 129, label %12
    i32 128, label %14
    i32 130, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @USB_POWER_MODE_OFF, align 4
  store i32 %9, i32* %6, align 4
  br label %20

10:                                               ; preds = %2
  %11 = load i32, i32* @USB_POWER_MODE_ON, align 4
  store i32 %11, i32* %6, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @USB_POWER_MODE_SAVE, align 4
  store i32 %13, i32* %6, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @USB_POWER_MODE_SUSPEND, align 4
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @USB_POWER_MODE_RESUME, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %16, %14, %12, %10, %8
  %21 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %22 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_SET_POWER_MODE, align 4
  %25 = call i32 @IOUSB(i32 %24)
  %26 = call i64 @ioctl(i32 %23, i32 %25, i32* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
