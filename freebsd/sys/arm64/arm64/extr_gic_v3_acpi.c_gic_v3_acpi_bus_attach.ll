; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to map the MADT to add children\0A\00", align 1
@gic_v3_add_children = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gic_v3_acpi_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_v3_acpi_bus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ACPI_SIG_MADT, align 4
  %6 = call i64 @acpi_find_table(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @ACPI_SIG_MADT, align 4
  %13 = call %struct.TYPE_7__* @acpi_map_table(i64 %11, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

19:                                               ; preds = %10
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = bitcast %struct.TYPE_7__* %22 to i8*
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i32, i32* @gic_v3_add_children, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @acpi_walk_subtables(%struct.TYPE_7__* %21, i8* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @acpi_unmap_table(%struct.TYPE_7__* %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @bus_generic_attach(i32 %35)
  br label %37

37:                                               ; preds = %19, %16, %9
  ret void
}

declare dso_local i64 @acpi_find_table(i32) #1

declare dso_local %struct.TYPE_7__* @acpi_map_table(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_walk_subtables(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
