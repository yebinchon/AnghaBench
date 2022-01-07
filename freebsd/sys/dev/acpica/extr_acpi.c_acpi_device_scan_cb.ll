; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_scan_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_scan_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_scan_ctx = type { i64, i32, i32 (i64, i32**, i32, i32)* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_TYPE_THERMAL = common dso_local global i64 0, align 8
@ACPI_TYPE_POWER = common dso_local global i64 0, align 8
@acpi_fake_objhandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_device_scan_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_scan_cb(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_device_scan_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.acpi_device_scan_ctx*
  store %struct.acpi_device_scan_ctx* %16, %struct.acpi_device_scan_ctx** %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @acpi_avoid(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.acpi_device_scan_ctx*, %struct.acpi_device_scan_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %96

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @AcpiGetType(i64 %29, i64* %14)
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %96

35:                                               ; preds = %28
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @ACPI_TYPE_THERMAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @ACPI_TYPE_POWER, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @AE_OK, align 4
  store i32 %52, i32* %5, align 4
  br label %96

53:                                               ; preds = %47, %43, %39, %35
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @acpi_get_device(i64 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  store i32* %56, i32** %11, align 8
  %57 = load %struct.acpi_device_scan_ctx*, %struct.acpi_device_scan_ctx** %10, align 8
  %58 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %57, i32 0, i32 2
  %59 = load i32 (i64, i32**, i32, i32)*, i32 (i64, i32**, i32, i32)** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.acpi_device_scan_ctx*, %struct.acpi_device_scan_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %59(i64 %60, i32** %11, i32 %61, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @ACPI_FAILURE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %53
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp eq i32* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %53
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %96

75:                                               ; preds = %69
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @device_get_parent(i32* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @device_delete_child(i32 %80, i32* %81)
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @acpi_fake_objhandler, align 4
  %85 = call i32 @AcpiDetachData(i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @acpi_fake_objhandler, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @AcpiAttachData(i64 %90, i32 %91, i32* %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* @AE_OK, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %73, %51, %33, %26
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @acpi_avoid(i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiGetType(i64, i64*) #1

declare dso_local i32* @acpi_get_device(i64) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @AcpiDetachData(i64, i32) #1

declare dso_local i32 @AcpiAttachData(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
