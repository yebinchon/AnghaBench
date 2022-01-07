; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_bulk_intr_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_bulk_intr_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { %struct.libusb20_device* }
%struct.libusb20_device = type { i32 }

@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_tr_bulk_intr_sync(%struct.libusb20_transfer* %0, i8* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_transfer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.libusb20_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %16, i32 0, i32 0
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %17, align 8
  store %struct.libusb20_device* %18, %struct.libusb20_device** %12, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64*, i64** %10, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %5
  %24 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %25 = call i64 @libusb20_tr_pending(%struct.libusb20_transfer* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %28, i32* %6, align 4
  br label %94

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %89, %29
  %31 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %32 = call i64 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer* %39, i8* %40, i64 %41, i64 %42)
  %44 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %45 = call i32 @libusb20_tr_start(%struct.libusb20_transfer* %44)
  br label %46

46:                                               ; preds = %55, %38
  %47 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %48 = call i64 @libusb20_dev_process(%struct.libusb20_device* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %52 = call i64 @libusb20_tr_pending(%struct.libusb20_transfer* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50
  %56 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %57 = call i32 @libusb20_dev_wait_process(%struct.libusb20_device* %56, i32 -1)
  br label %46

58:                                               ; preds = %54, %46
  %59 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %60 = call i64 @libusb20_tr_get_actual_length(%struct.libusb20_transfer* %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* %14, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %71 = call i32 @libusb20_tr_get_status(%struct.libusb20_transfer* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %92

75:                                               ; preds = %69
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %92

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %13, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %30, label %92

92:                                               ; preds = %89, %79, %74
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %27
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @libusb20_tr_pending(%struct.libusb20_transfer*) #1

declare dso_local i64 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer*, i8*, i64, i64) #1

declare dso_local i32 @libusb20_tr_start(%struct.libusb20_transfer*) #1

declare dso_local i64 @libusb20_dev_process(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_wait_process(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_tr_get_actual_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_status(%struct.libusb20_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
