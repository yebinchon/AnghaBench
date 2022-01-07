; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_tr_renew.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_tr_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32, i32, %struct.usb_fs_init* }
%struct.usb_fs_init = type { i32, i32 }
%struct.usb_fs_endpoint = type { i32, i32 }

@LIBUSB20_ERROR_NO_MEM = common dso_local global i32 0, align 4
@USB_FS_INIT = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*)* @ugen20_tr_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_tr_renew(%struct.libusb20_device* %0) #0 {
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca %struct.usb_fs_init, align 4
  %4 = alloca %struct.usb_fs_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %2, align 8
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %9 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %20 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %19, i32 0, i32 2
  %21 = load %struct.usb_fs_init*, %struct.usb_fs_init** %20, align 8
  %22 = icmp eq %struct.usb_fs_init* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.usb_fs_init* @malloc(i32 %24)
  %26 = bitcast %struct.usb_fs_init* %25 to %struct.usb_fs_endpoint*
  store %struct.usb_fs_endpoint* %26, %struct.usb_fs_endpoint** %4, align 8
  %27 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %28 = icmp eq %struct.usb_fs_endpoint* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @LIBUSB20_ERROR_NO_MEM, align 4
  store i32 %30, i32* %5, align 4
  br label %60

31:                                               ; preds = %23
  %32 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %33 = bitcast %struct.usb_fs_endpoint* %32 to %struct.usb_fs_init*
  %34 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %35 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %34, i32 0, i32 2
  store %struct.usb_fs_init* %33, %struct.usb_fs_init** %35, align 8
  br label %36

36:                                               ; preds = %31, %14
  %37 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %38 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %37, i32 0, i32 2
  %39 = load %struct.usb_fs_init*, %struct.usb_fs_init** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @memset(%struct.usb_fs_init* %39, i32 0, i32 %40)
  %42 = call i32 @memset(%struct.usb_fs_init* %3, i32 0, i32 8)
  %43 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %44 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %43, i32 0, i32 2
  %45 = load %struct.usb_fs_init*, %struct.usb_fs_init** %44, align 8
  %46 = call i32 @libusb20_pass_ptr(%struct.usb_fs_init* %45)
  %47 = getelementptr inbounds %struct.usb_fs_init, %struct.usb_fs_init* %3, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds %struct.usb_fs_init, %struct.usb_fs_init* %3, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %51 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @USB_FS_INIT, align 4
  %54 = call i32 @IOUSB(i32 %53)
  %55 = call i64 @ioctl(i32 %52, i32 %54, %struct.usb_fs_init* %3)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %57, %29, %13
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.usb_fs_init* @malloc(i32) #1

declare dso_local i32 @memset(%struct.usb_fs_init*, i32, i32) #1

declare dso_local i32 @libusb20_pass_ptr(%struct.usb_fs_init*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.usb_fs_init*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
