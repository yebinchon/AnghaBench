; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_get_iso_packet_buffer_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_get_iso_packet_buffer_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @libusb_get_iso_packet_buffer_simple(%struct.libusb_transfer* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.libusb_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %8 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %22 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %29 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %27, %26, %19, %11
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
