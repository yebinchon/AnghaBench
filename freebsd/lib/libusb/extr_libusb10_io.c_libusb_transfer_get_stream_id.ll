; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_transfer_get_stream_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_transfer_get_stream_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_transfer_get_stream_id(%struct.libusb_transfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb_transfer*, align 8
  %4 = alloca %struct.libusb_super_transfer*, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %3, align 8
  %5 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %6 = icmp eq %struct.libusb_transfer* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %10 = bitcast %struct.libusb_transfer* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 -4
  %12 = bitcast i32* %11 to %struct.libusb_super_transfer*
  store %struct.libusb_super_transfer* %12, %struct.libusb_super_transfer** %4, align 8
  %13 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %8, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
