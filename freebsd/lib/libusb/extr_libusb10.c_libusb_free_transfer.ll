; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_free_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_free_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32, %struct.libusb_super_transfer* }
%struct.libusb_super_transfer = type { i32 }

@LIBUSB_TRANSFER_FREE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb_free_transfer(%struct.libusb_transfer* %0) #0 {
  %2 = alloca %struct.libusb_transfer*, align 8
  %3 = alloca %struct.libusb_super_transfer*, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %2, align 8
  %4 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  %5 = icmp eq %struct.libusb_transfer* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  %9 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LIBUSB_TRANSFER_FREE_BUFFER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  %16 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %15, i32 0, i32 1
  %17 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %16, align 8
  %18 = call i32 @free(%struct.libusb_super_transfer* %17)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  %21 = bitcast %struct.libusb_transfer* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 -4
  %23 = bitcast i32* %22 to %struct.libusb_super_transfer*
  store %struct.libusb_super_transfer* %23, %struct.libusb_super_transfer** %3, align 8
  %24 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %25 = call i32 @free(%struct.libusb_super_transfer* %24)
  br label %26

26:                                               ; preds = %19, %6
  ret void
}

declare dso_local i32 @free(%struct.libusb_super_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
