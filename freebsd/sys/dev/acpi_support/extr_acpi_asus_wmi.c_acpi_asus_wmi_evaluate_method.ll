; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_asus_wmi.c_acpi_asus_wmi_evaluate_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_asus_wmi.c_acpi_asus_wmi_evaluate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64**, %struct.TYPE_8__* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_ASUS_WMI_MGMT_GUID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ASUS_WMI_UNSUPPORTED_METHOD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i64*)* @acpi_asus_wmi_evaluate_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_asus_wmi_evaluate_method(i32 %0, i32 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 1
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %23 = bitcast [2 x i64]* %12 to i64**
  store i64** %23, i64*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %24, align 8
  %25 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %27 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %27, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACPI_ASUS_WMI_MGMT_GUID, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ACPI_WMI_EVALUATE_CALL(i32 %28, i32 %29, i32 1, i32 %30, %struct.TYPE_9__* %15, %struct.TYPE_9__* %16)
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = call i32 @acpi_asus_wmi_free_buffer(%struct.TYPE_9__* %16)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %14, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  br label %55

54:                                               ; preds = %43, %38
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %54, %49
  %56 = call i32 @acpi_asus_wmi_free_buffer(%struct.TYPE_9__* %16)
  %57 = load i64*, i64** %11, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %11, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @ASUS_WMI_UNSUPPORTED_METHOD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %34
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_WMI_EVALUATE_CALL(i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @acpi_asus_wmi_free_buffer(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
