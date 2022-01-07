; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_callback_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_callback_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 (%struct.libusb20_transfer*)*, i32, i64, i64, i64 }

@LIBUSB20_TRANSFER_START = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_DRAINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_tr_callback_wrapper(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca %struct.libusb20_transfer*, align 8
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %2, align 8
  br label %3

3:                                                ; preds = %25, %1
  %4 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %5 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, i32* @LIBUSB20_TRANSFER_START, align 4
  %10 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %11 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %15

12:                                               ; preds = %3
  %13 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %14 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %16, i32 0, i32 0
  %18 = load i32 (%struct.libusb20_transfer*)*, i32 (%struct.libusb20_transfer*)** %17, align 8
  %19 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %20 = call i32 %18(%struct.libusb20_transfer* %19)
  %21 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %22 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %27 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  br label %3

28:                                               ; preds = %15
  %29 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %30 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %35 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %40 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @LIBUSB20_TRANSFER_DRAINED, align 4
  %42 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %43 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %45 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %44, i32 0, i32 0
  %46 = load i32 (%struct.libusb20_transfer*)*, i32 (%struct.libusb20_transfer*)** %45, align 8
  %47 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %48 = call i32 %46(%struct.libusb20_transfer* %47)
  br label %49

49:                                               ; preds = %38, %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
