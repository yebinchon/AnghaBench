; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_get_transfer_by_ep_no.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_get_transfer_by_ep_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb20_device = type { i32 }

@LIBUSB20_ENDPOINT_ADDRESS_MASK = common dso_local global i32 0, align 4
@LIBUSB20_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@LIBUSB20_SPEED_LOW = common dso_local global i32 0, align 4
@LIBUSB20_SPEED_FULL = common dso_local global i32 0, align 4
@LIBUSB20_SPEED_SUPER = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.libusb20_transfer* (i32*, i32)* @usb_get_transfer_by_ep_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.libusb20_transfer* @usb_get_transfer_by_ep_no(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.libusb20_transfer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca %struct.libusb20_transfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.libusb20_device*
  store %struct.libusb20_device* %14, %struct.libusb20_device** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LIBUSB20_ENDPOINT_ADDRESS_MASK, align 4
  %17 = and i32 %15, %16
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LIBUSB20_ENDPOINT_DIR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %28 = call i32 @libusb20_dev_get_speed(%struct.libusb20_device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @LIBUSB20_SPEED_LOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 256, i32* %9, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @LIBUSB20_SPEED_FULL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 4096, i32* %9, align 4
  br label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @LIBUSB20_SPEED_SUPER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 65536, i32* %9, align 4
  br label %44

43:                                               ; preds = %38
  store i32 16384, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device* %47, i32 %48)
  store %struct.libusb20_transfer* %49, %struct.libusb20_transfer** %7, align 8
  %50 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %51 = icmp eq %struct.libusb20_transfer* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  store %struct.libusb20_transfer* %53, %struct.libusb20_transfer** %3, align 8
  br label %71

54:                                               ; preds = %46
  %55 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @libusb20_tr_open(%struct.libusb20_transfer* %55, i32 %56, i32 1, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @LIBUSB20_ERROR_BUSY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  store %struct.libusb20_transfer* %63, %struct.libusb20_transfer** %3, align 8
  br label %71

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store %struct.libusb20_transfer* null, %struct.libusb20_transfer** %3, align 8
  br label %71

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  store %struct.libusb20_transfer* %70, %struct.libusb20_transfer** %3, align 8
  br label %71

71:                                               ; preds = %69, %67, %62, %52
  %72 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  ret %struct.libusb20_transfer* %72
}

declare dso_local i32 @libusb20_dev_get_speed(%struct.libusb20_device*) #1

declare dso_local %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_tr_open(%struct.libusb20_transfer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
