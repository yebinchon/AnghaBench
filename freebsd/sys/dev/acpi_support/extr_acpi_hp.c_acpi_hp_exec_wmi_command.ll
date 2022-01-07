; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_exec_wmi_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_exec_wmi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32**, %struct.TYPE_8__* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_HP_WMI_BIOS_GUID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @acpi_hp_exec_wmi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_hp_exec_wmi_command(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [36 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = bitcast [36 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 144, i1 false)
  %19 = getelementptr inbounds [36 x i32], [36 x i32]* %12, i64 0, i64 0
  store i32 1430472019, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 1
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds i32, i32* %20, i64 1
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 4, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 144, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %32 = bitcast [36 x i32]* %12 to i32**
  store i32** %32, i32*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %33, align 8
  %34 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %36 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %36, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ACPI_HP_WMI_BIOS_GUID, align 4
  %39 = call i32 @ACPI_WMI_EVALUATE_CALL(i32 %37, i32 %38, i32 0, i32 3, %struct.TYPE_9__* %15, %struct.TYPE_9__* %16)
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %5
  %43 = call i32 @acpi_hp_free_buffer(%struct.TYPE_9__* %16)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %83

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %14, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %46
  %58 = call i32 @acpi_hp_free_buffer(%struct.TYPE_9__* %16)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %83

61:                                               ; preds = %51
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %72, %61
  %81 = call i32 @acpi_hp_free_buffer(%struct.TYPE_9__* %16)
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %57, %42
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_WMI_EVALUATE_CALL(i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @acpi_hp_free_buffer(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
