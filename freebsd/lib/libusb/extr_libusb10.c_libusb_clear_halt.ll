; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_clear_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_clear_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_transfer = type { i32 }
%struct.libusb_device = type { i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_BUSY = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_clear_halt(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_transfer*, align 8
  %7 = alloca %struct.libusb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb20_device* %9, i32 %10, i32 0)
  store %struct.libusb20_transfer* %11, %struct.libusb20_transfer** %6, align 8
  %12 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %13 = icmp eq %struct.libusb20_transfer* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %18 = call %struct.libusb_device* @libusb_get_device(%struct.libusb20_device* %17)
  store %struct.libusb_device* %18, %struct.libusb_device** %7, align 8
  %19 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %20 = icmp eq %struct.libusb_device* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %16
  %24 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %25 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CTX_LOCK(i32 %26)
  %28 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @libusb20_tr_open(%struct.libusb20_transfer* %28, i32 0, i32 1, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %32 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CTX_UNLOCK(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @LIBUSB20_ERROR_BUSY, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %37, %23
  %44 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %45 = call i32 @libusb20_tr_clear_stall_sync(%struct.libusb20_transfer* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %50 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CTX_LOCK(i32 %51)
  %53 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %6, align 8
  %54 = call i32 @libusb20_tr_close(%struct.libusb20_transfer* %53)
  %55 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %56 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CTX_UNLOCK(i32 %57)
  br label %59

59:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %41, %21, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.libusb20_transfer* @libusb10_get_transfer(%struct.libusb20_device*, i32, i32) #1

declare dso_local %struct.libusb_device* @libusb_get_device(%struct.libusb20_device*) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local i32 @libusb20_tr_open(%struct.libusb20_transfer*, i32, i32, i32) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

declare dso_local i32 @libusb20_tr_clear_stall_sync(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_close(%struct.libusb20_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
