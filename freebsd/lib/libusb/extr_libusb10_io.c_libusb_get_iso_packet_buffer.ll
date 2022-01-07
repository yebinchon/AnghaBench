; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_get_iso_packet_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_get_iso_packet_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @libusb_get_iso_packet_buffer(%struct.libusb_transfer* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.libusb_transfer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %48

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32* null, i32** %3, align 8
  br label %48

20:                                               ; preds = %13
  %21 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %22 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %48

27:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %34 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %46, %26, %19, %12
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
