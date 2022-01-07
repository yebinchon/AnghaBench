; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_root_remove_dev_quirk.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_root_remove_dev_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_quirk = type { i32, i32, i32, i32, i32 }
%struct.usb_gen_quirk = type { i32, i32, i32, i32, i32 }

@USB_DEV_QUIRK_REMOVE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LIBUSB20_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_backend*, %struct.libusb20_quirk*)* @ugen20_root_remove_dev_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_root_remove_dev_quirk(%struct.libusb20_backend* %0, %struct.libusb20_quirk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_backend*, align 8
  %5 = alloca %struct.libusb20_quirk*, align 8
  %6 = alloca %struct.usb_gen_quirk, align 4
  %7 = alloca i32, align 4
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %4, align 8
  store %struct.libusb20_quirk* %1, %struct.libusb20_quirk** %5, align 8
  %8 = call i32 @memset(%struct.usb_gen_quirk* %6, i32 0, i32 20)
  %9 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %5, align 8
  %10 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %6, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %5, align 8
  %14 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %5, align 8
  %18 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %5, align 8
  %22 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %5, align 8
  %28 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %26, i32 %29, i32 4)
  %31 = load i32, i32* @USB_DEV_QUIRK_REMOVE, align 4
  %32 = call i32 @IOUSB(i32 %31)
  %33 = call i32 @ugen20_be_ioctl(i32 %32, %struct.usb_gen_quirk* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINVAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @LIBUSB20_ERROR_NOT_FOUND, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.usb_gen_quirk*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ugen20_be_ioctl(i32, %struct.usb_gen_quirk*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
