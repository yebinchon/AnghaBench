; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_get_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_get_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb20_device = type { i64, %struct.libusb20_transfer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device* %0, i64 %1) #0 {
  %3 = alloca %struct.libusb20_transfer*, align 8
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i64, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %8 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.libusb20_transfer* null, %struct.libusb20_transfer** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %14 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %13, i32 0, i32 1
  %15 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %15, i64 %16
  store %struct.libusb20_transfer* %17, %struct.libusb20_transfer** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  ret %struct.libusb20_transfer* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
