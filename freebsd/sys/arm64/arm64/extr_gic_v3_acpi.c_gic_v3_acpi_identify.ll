; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madt_table_data = type { %struct.TYPE_8__*, i32*, i64, i32* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"gic: Unable to map the MADT\0A\00", align 1
@madt_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No gic interrupt or distributor table\0A\00", align 1
@ACPI_MADT_GIC_VERSION_V3 = common dso_local global i64 0, align 8
@BUS_PASS_INTERRUPT = common dso_local global i64 0, align 8
@BUS_PASS_ORDER_MIDDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"gic\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"add gic child failed\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@rdist_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gic_v3_acpi_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_v3_acpi_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.madt_table_data, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @ACPI_SIG_MADT, align 4
  %10 = call i64 @acpi_find_table(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %98

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @ACPI_SIG_MADT, align 4
  %17 = call %struct.TYPE_9__* @acpi_map_table(i64 %15, i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @device_printf(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %98

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 3
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  %27 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = bitcast %struct.TYPE_9__* %30 to i8*
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load i32, i32* @madt_handler, align 4
  %39 = call i32 @acpi_walk_subtables(%struct.TYPE_9__* %29, i8* %37, i32 %38, %struct.madt_table_data* %5)
  %40 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @device_printf(i32* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %95

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_MADT_GIC_VERSION_V3, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %95

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @BUS_PASS_INTERRUPT, align 8
  %57 = load i64, i64* @BUS_PASS_ORDER_MIDDLE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32* @BUS_ADD_CHILD(i32* %55, i64 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @device_printf(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %95

65:                                               ; preds = %54
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @BUS_SET_RESOURCE(i32* %66, i32* %67, i32 %68, i32 0, i32 %72, i32 131072)
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 1
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = bitcast %struct.TYPE_9__* %78 to i8*
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load i32, i32* @rdist_map, align 4
  %87 = call i32 @acpi_walk_subtables(%struct.TYPE_9__* %77, i8* %85, i32 %86, %struct.madt_table_data* %5)
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @acpi_set_private(i32* %88, i8* %93)
  br label %95

95:                                               ; preds = %65, %62, %53, %43
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = call i32 @acpi_unmap_table(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %95, %20, %13
  ret void
}

declare dso_local i64 @acpi_find_table(i32) #1

declare dso_local %struct.TYPE_9__* @acpi_map_table(i64, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @acpi_walk_subtables(%struct.TYPE_9__*, i8*, i32, %struct.madt_table_data*) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i64, i8*, i32) #1

declare dso_local i32 @BUS_SET_RESOURCE(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @acpi_set_private(i32*, i8*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
