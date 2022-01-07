; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_hotplug.c_libusb_hotplug_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_hotplug.c_libusb_hotplug_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.libusb20_device* }
%struct.libusb20_device = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @libusb_hotplug_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libusb_hotplug_equal(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca %struct.libusb20_device*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.libusb20_device*, %struct.libusb20_device** %9, align 8
  store %struct.libusb20_device* %10, %struct.libusb20_device** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  store %struct.libusb20_device* %13, %struct.libusb20_device** %7, align 8
  %14 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %15 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %18 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %24 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %27 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %33 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %32, i32 0, i32 3
  %34 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %35 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %34, i32 0, i32 3
  %36 = call i64 @memcmp(i32* %33, i32* %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %41 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %40, i32 0, i32 2
  %42 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %43 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %42, i32 0, i32 2
  %44 = call i64 @memcmp(i32* %41, i32* %43, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %38, %30, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
