; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_alloc_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_alloc_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb_transfer* @libusb_alloc_transfer(i32 %0) #0 {
  %2 = alloca %struct.libusb_transfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb_transfer*, align 8
  %5 = alloca %struct.libusb_super_transfer*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.libusb_super_transfer* @malloc(i32 %12)
  store %struct.libusb_super_transfer* %13, %struct.libusb_super_transfer** %5, align 8
  %14 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %15 = icmp eq %struct.libusb_super_transfer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.libusb_transfer* null, %struct.libusb_transfer** %2, align 8
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @memset(%struct.libusb_super_transfer* %18, i32 0, i32 %19)
  %21 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %22 = bitcast %struct.libusb_super_transfer* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = bitcast i32* %23 to %struct.libusb_transfer*
  store %struct.libusb_transfer* %24, %struct.libusb_transfer** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %27 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  store %struct.libusb_transfer* %28, %struct.libusb_transfer** %2, align 8
  br label %29

29:                                               ; preds = %17, %16
  %30 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  ret %struct.libusb_transfer* %30
}

declare dso_local %struct.libusb_super_transfer* @malloc(i32) #1

declare dso_local i32 @memset(%struct.libusb_super_transfer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
