; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_get_buffsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_get_buffsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb20_device*, %struct.TYPE_3__*)* @libusb10_get_buffsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libusb10_get_buffsize(%struct.libusb20_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %8 = call i32 @libusb20_dev_get_speed(%struct.libusb20_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %14 [
    i32 128, label %12
    i32 129, label %13
  ]

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

13:                                               ; preds = %2
  store i32 1024, i32* %5, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %19 [
    i32 131, label %16
    i32 132, label %17
    i32 130, label %18
  ]

16:                                               ; preds = %14
  store i32 256, i32* %5, align 4
  br label %20

17:                                               ; preds = %14
  store i32 4096, i32* %5, align 4
  br label %20

18:                                               ; preds = %14
  store i32 65536, i32* %5, align 4
  br label %20

19:                                               ; preds = %14
  store i32 16384, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16
  br label %21

21:                                               ; preds = %20, %13, %12
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @libusb20_dev_get_speed(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
