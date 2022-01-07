; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32, %struct.TYPE_4__*, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.libusb20_transfer*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_tr_submit(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca %struct.libusb20_transfer*, align 8
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %2, align 8
  %3 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %4 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %10 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %30

14:                                               ; preds = %8
  %15 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %16 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %18 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %20 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %22 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.libusb20_transfer*)*, i32 (%struct.libusb20_transfer*)** %26, align 8
  %28 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %29 = call i32 %27(%struct.libusb20_transfer* %28)
  br label %30

30:                                               ; preds = %14, %13, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
