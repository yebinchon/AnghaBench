; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_max_iso_packet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_max_iso_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_max_iso_packet_size(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @libusb_get_max_packet_size(%struct.TYPE_4__* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @libusb20_dev_get_speed(i32 %12)
  switch i32 %13, label %15 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %2, %2
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 11
  %21 = and i32 %20, 3
  %22 = add nsw i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 3, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 2047
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %15
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @libusb_get_max_packet_size(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @libusb20_dev_get_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
