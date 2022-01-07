; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { %struct.libusb20_transfer*, %struct.usb_fs_endpoint*, i32 }
%struct.libusb20_transfer = type { i32, i64, i64 }
%struct.usb_fs_endpoint = type { i64, i64, i64 }
%struct.usb_fs_complete = type { i32 }

@USB_FS_COMPLETE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_COMPLETED = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i64 0, align 8
@LIBUSB20_TRANSFER_CANCELLED = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i64 0, align 8
@LIBUSB20_TRANSFER_STALL = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i64 0, align 8
@LIBUSB20_TRANSFER_TIMED_OUT = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*)* @ugen20_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_process(%struct.libusb20_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca %struct.usb_fs_complete, align 4
  %5 = alloca %struct.usb_fs_endpoint*, align 8
  %6 = alloca %struct.libusb20_transfer*, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  br label %7

7:                                                ; preds = %1, %110
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %9 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @USB_FS_COMPLETE, align 4
  %12 = call i32 @IOUSB(i32 %11)
  %13 = call i64 @ioctl(i32 %10, i32 %12, %struct.usb_fs_complete* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EBUSY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %113

20:                                               ; preds = %15
  %21 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %21, i32* %2, align 4
  br label %114

22:                                               ; preds = %7
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %24 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %23, i32 0, i32 1
  %25 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %24, align 8
  store %struct.usb_fs_endpoint* %25, %struct.usb_fs_endpoint** %5, align 8
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %27 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %26, i32 0, i32 0
  %28 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %27, align 8
  store %struct.libusb20_transfer* %28, %struct.libusb20_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.usb_fs_complete, %struct.usb_fs_complete* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %31, i64 %32
  store %struct.usb_fs_endpoint* %33, %struct.usb_fs_endpoint** %5, align 8
  %34 = getelementptr inbounds %struct.usb_fs_complete, %struct.usb_fs_complete* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %36, i64 %37
  store %struct.libusb20_transfer* %38, %struct.libusb20_transfer** %6, align 8
  %39 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %22
  %44 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %45 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %48 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %50 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %53 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @LIBUSB20_TRANSFER_COMPLETED, align 4
  %55 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %56 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %110

57:                                               ; preds = %22
  %58 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %59 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USB_ERR_CANCELLED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %65 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %67 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @LIBUSB20_TRANSFER_CANCELLED, align 4
  %69 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %70 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %109

71:                                               ; preds = %57
  %72 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %73 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @USB_ERR_STALLED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %79 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %81 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @LIBUSB20_TRANSFER_STALL, align 4
  %83 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %84 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %108

85:                                               ; preds = %71
  %86 = load %struct.usb_fs_endpoint*, %struct.usb_fs_endpoint** %5, align 8
  %87 = getelementptr inbounds %struct.usb_fs_endpoint, %struct.usb_fs_endpoint* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @USB_ERR_TIMEOUT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %93 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %95 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @LIBUSB20_TRANSFER_TIMED_OUT, align 4
  %97 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %98 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %107

99:                                               ; preds = %85
  %100 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %101 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %103 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @LIBUSB20_TRANSFER_ERROR, align 4
  %105 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %106 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %63
  br label %110

110:                                              ; preds = %109, %43
  %111 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %112 = call i32 @libusb20_tr_callback_wrapper(%struct.libusb20_transfer* %111)
  br label %7

113:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %20
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @ioctl(i32, i32, %struct.usb_fs_complete*) #1

declare dso_local i32 @IOUSB(i32) #1

declare dso_local i32 @libusb20_tr_callback_wrapper(%struct.libusb20_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
