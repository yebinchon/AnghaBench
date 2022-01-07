; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_get_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_get_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb20_device = type { i32 }

@LIBUSB20_ENDPOINT_ADDRESS_MASK = common dso_local global i32 0, align 4
@LIBUSB20_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.libusb20_transfer* (%struct.libusb20_device*, i32, i32)* @libusb10_get_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb20_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LIBUSB20_ENDPOINT_ADDRESS_MASK, align 4
  %11 = and i32 %9, %10
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LIBUSB20_ENDPOINT_DIR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 2
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device* %23, i32 %24)
  ret %struct.libusb20_transfer* %25
}

declare dso_local %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
