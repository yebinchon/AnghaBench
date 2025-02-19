; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.libusb20_backend*)* }
%struct.libusb20_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_be_free(%struct.libusb20_backend* %0) #0 {
  %2 = alloca %struct.libusb20_backend*, align 8
  %3 = alloca %struct.libusb20_device*, align 8
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %2, align 8
  %4 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %5 = icmp eq %struct.libusb20_backend* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %12, %7
  %9 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %10 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %9, i32* null)
  store %struct.libusb20_device* %10, %struct.libusb20_device** %3, align 8
  %11 = icmp ne %struct.libusb20_device* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %14 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %15 = call i32 @libusb20_be_dequeue_device(%struct.libusb20_backend* %13, %struct.libusb20_device* %14)
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %17 = call i32 @libusb20_dev_free(%struct.libusb20_device* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %20 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.libusb20_backend*)*, i32 (%struct.libusb20_backend*)** %22, align 8
  %24 = icmp ne i32 (%struct.libusb20_backend*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %27 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.libusb20_backend*)*, i32 (%struct.libusb20_backend*)** %29, align 8
  %31 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %32 = call i32 %30(%struct.libusb20_backend* %31)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %35 = call i32 @free(%struct.libusb20_backend* %34)
  br label %36

36:                                               ; preds = %33, %6
  ret void
}

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend*, i32*) #1

declare dso_local i32 @libusb20_be_dequeue_device(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @free(%struct.libusb20_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
