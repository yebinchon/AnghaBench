; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_gic_acpi_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_gic_acpi_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madt_table_data = type { %struct.TYPE_9__*, %struct.TYPE_11__**, i32* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"gic: Unable to map the MADT\0A\00", align 1
@madt_handler = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"gic: Not all CPU interfaces at the same address, this may fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"gic: No CPU interfaces found\0A\00", align 1
@BUS_PASS_INTERRUPT = common dso_local global i64 0, align 8
@BUS_PASS_ORDER_MIDDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"gic\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"add gic child failed\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gic_acpi_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_acpi_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.madt_table_data, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @ACPI_SIG_MADT, align 4
  %12 = call i64 @acpi_find_table(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %137

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @ACPI_SIG_MADT, align 4
  %19 = call %struct.TYPE_10__* @acpi_map_table(i64 %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @device_printf(i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %137

25:                                               ; preds = %16
  %26 = call i32 @bzero(%struct.madt_table_data* %5, i32 24)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = bitcast %struct.TYPE_10__* %32 to i8*
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = load i32, i32* @madt_handler, align 4
  %41 = call i32 @acpi_walk_subtables(%struct.TYPE_10__* %31, i8* %39, i32 %40, %struct.madt_table_data* %5)
  %42 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %47 [
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %25, %25, %25
  br label %48

47:                                               ; preds = %25
  br label %134

48:                                               ; preds = %46
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MAXCPU, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 1
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %55, i64 %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 1
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %6, align 8
  br label %88

71:                                               ; preds = %61
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 1
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %76, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %74, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @device_printf(i32* %85, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %71
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %53
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = icmp eq %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @device_printf(i32* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %134

99:                                               ; preds = %93
  %100 = load i32*, i32** %4, align 8
  %101 = load i64, i64* @BUS_PASS_INTERRUPT, align 8
  %102 = load i64, i64* @BUS_PASS_ORDER_MIDDLE, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32* @BUS_ADD_CHILD(i32* %100, i64 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @device_printf(i32* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %134

110:                                              ; preds = %99
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* @SYS_RES_MEMORY, align 4
  %114 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @BUS_SET_RESOURCE(i32* %111, i32* %112, i32 %113, i32 0, i64 %117, i32 4096)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* @SYS_RES_MEMORY, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @BUS_SET_RESOURCE(i32* %119, i32* %120, i32 %121, i32 1, i64 %124, i32 4096)
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %5, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @acpi_set_private(i32* %126, i8* %132)
  br label %134

134:                                              ; preds = %110, %107, %96, %47
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = call i32 @acpi_unmap_table(%struct.TYPE_10__* %135)
  br label %137

137:                                              ; preds = %134, %22, %15
  ret void
}

declare dso_local i64 @acpi_find_table(i32) #1

declare dso_local %struct.TYPE_10__* @acpi_map_table(i64, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @bzero(%struct.madt_table_data*, i32) #1

declare dso_local i32 @acpi_walk_subtables(%struct.TYPE_10__*, i8*, i32, %struct.madt_table_data*) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i64, i8*, i32) #1

declare dso_local i32 @BUS_SET_RESOURCE(i32*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @acpi_set_private(i32*, i8*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
