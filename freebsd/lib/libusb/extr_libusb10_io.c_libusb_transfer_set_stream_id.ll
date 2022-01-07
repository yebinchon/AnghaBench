; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_transfer_set_stream_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_transfer_set_stream_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb_transfer_set_stream_id(%struct.libusb_transfer* %0, i32 %1) #0 {
  %3 = alloca %struct.libusb_transfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb_super_transfer*, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %7 = icmp eq %struct.libusb_transfer* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %11 = bitcast %struct.libusb_transfer* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 -4
  %13 = bitcast i32* %12 to %struct.libusb_super_transfer*
  store %struct.libusb_super_transfer* %13, %struct.libusb_super_transfer** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
