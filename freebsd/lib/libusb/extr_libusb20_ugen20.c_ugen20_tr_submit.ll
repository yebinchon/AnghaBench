; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_tr_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_tr_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.usb_fs_endpoint* }
%struct.usb_fs_endpoint = type { i32, i32, i32 }
%struct.usb_fs_start = type { i64 }

@LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK = common dso_local global i32 0, align 4
@USB_FS_FLAG_SINGLE_SHORT_OK = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_MULTI_SHORT_NOT_OK = common dso_local global i32 0, align 4
@USB_FS_FLAG_MULTI_SHORT_OK = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_FORCE_SHORT = common dso_local global i32 0, align 4
@USB_FS_FLAG_FORCE_SHORT = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_DO_CLEAR_STALL = common dso_local global i32 0, align 4
@USB_FS_FLAG_CLEAR_STALL = common dso_local global i32 0, align 4
@USB_FS_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_transfer*)* @ugen20_tr_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ugen20_tr_submit(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca %struct.libusb20_transfer*, align 8
  %3 = alloca %struct.usb_fs_start, align 8
  %4 = alloca %struct.usb_fs_endpoint*, align 8
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %2, align 8
  %5 = call i32 @memset(%struct.usb_fs_start* %3, i32 0, i32 8)
  %6 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %7 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %9, align 8
  store %struct.usb_fs_endpoint* %10, %struct.usb_fs_endpoint** %4, align 8
  %11 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %12 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %15 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %14, i64 %13
  store %struct.usb_fs_endpoint* %15, %struct.usb_fs_endpoint** %4, align 8
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %22 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %24 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @USB_FS_FLAG_SINGLE_SHORT_OK, align 4
  %31 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %32 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %37 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LIBUSB20_TRANSFER_MULTI_SHORT_NOT_OK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @USB_FS_FLAG_MULTI_SHORT_OK, align 4
  %44 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %45 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %50 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LIBUSB20_TRANSFER_FORCE_SHORT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @USB_FS_FLAG_FORCE_SHORT, align 4
  %57 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %58 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %63 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LIBUSB20_TRANSFER_DO_CLEAR_STALL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @USB_FS_FLAG_CLEAR_STALL, align 4
  %70 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %71 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %76 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 65535
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %81 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %80, i32 0, i32 0
  store i32 65535, i32* %81, align 4
  br label %88

82:                                               ; preds = %74
  %83 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %84 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %4, align 8
  %87 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %90 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.usb_fs_start, %struct.usb_fs_start* %3, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %94 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @USB_FS_START, align 4
  %99 = call i32 @IOUSB(i32 %98)
  %100 = call i64 @ioctl(i32 %97, i32 %99, %struct.usb_fs_start* %3)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %88
  ret void
}

declare dso_local i32 @memset(%struct.usb_fs_start*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.usb_fs_start*) #1

declare dso_local i32 @IOUSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
