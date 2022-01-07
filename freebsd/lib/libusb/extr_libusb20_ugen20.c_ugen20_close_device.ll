; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_close_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32, i32, i32*, i64 }
%struct.usb_fs_uninit = type { i32 }

@USB_FS_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*)* @ugen20_close_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_close_device(%struct.libusb20_device* %0) #0 {
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca %struct.usb_fs_uninit, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %2, align 8
  %4 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %5 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = call i32 @memset(%struct.usb_fs_uninit* %3, i32 0, i32 4)
  %10 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %11 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @USB_FS_UNINIT, align 4
  %14 = call i32 @IOUSB(i32 %13)
  %15 = call i64 @ioctl(i32 %12, i32 %14, %struct.usb_fs_uninit* %3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %8
  %19 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %20 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %25 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %27 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %29 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @close(i32 %30)
  %32 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %33 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %37 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %39 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.usb_fs_uninit*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.usb_fs_uninit*) #1

declare dso_local i32 @IOUSB(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
