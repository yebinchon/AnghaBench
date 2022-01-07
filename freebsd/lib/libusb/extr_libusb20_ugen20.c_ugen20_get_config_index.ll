; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_get_config_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_get_config_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@USB_GET_CONFIG = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*, i32*)* @ugen20_get_config_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_get_config_index(%struct.libusb20_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %8 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @USB_GET_CONFIG, align 4
  %11 = call i32 @IOUSB(i32 %10)
  %12 = call i64 @ioctl(i32 %9, i32 %11, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
