; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_root_get_quirk_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_root_get_quirk_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_quirk = type { i32 }
%struct.usb_gen_quirk = type { i32, i32 }

@USB_QUIRK_NAME_GET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LIBUSB20_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_backend*, i32, %struct.libusb20_quirk*)* @ugen20_root_get_quirk_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_root_get_quirk_name(%struct.libusb20_backend* %0, i32 %1, %struct.libusb20_quirk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb20_backend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_quirk*, align 8
  %8 = alloca %struct.usb_gen_quirk, align 4
  %9 = alloca i32, align 4
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.libusb20_quirk* %2, %struct.libusb20_quirk** %7, align 8
  %10 = call i32 @memset(%struct.usb_gen_quirk* %8, i32 0, i32 8)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %8, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @USB_QUIRK_NAME_GET, align 4
  %14 = call i32 @IOUSB(i32 %13)
  %15 = call i32 @ugen20_be_ioctl(i32 %14, %struct.usb_gen_quirk* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @LIBUSB20_ERROR_NOT_FOUND, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %18
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %7, align 8
  %27 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlcpy(i32 %28, i32 %30, i32 4)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.usb_gen_quirk*, i32, i32) #1

declare dso_local i32 @ugen20_be_ioctl(i32, %struct.usb_gen_quirk*) #1

declare dso_local i32 @IOUSB(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
