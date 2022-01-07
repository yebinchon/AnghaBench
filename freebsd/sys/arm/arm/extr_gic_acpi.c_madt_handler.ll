; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_madt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_madt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.madt_table_data = type { %struct.TYPE_5__**, i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"gic: Already have a distributor table\00", align 1
@MAXCPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @madt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madt_handler(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.madt_table_data*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.madt_table_data*
  store %struct.madt_table_data* %8, %struct.madt_table_data** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %50 [
    i32 129, label %12
    i32 128, label %32
  ]

12:                                               ; preds = %2
  %13 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %14 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32, i32* @bootverbose, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %22 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %17
  br label %31

26:                                               ; preds = %12
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = bitcast %struct.TYPE_4__* %27 to i32*
  %29 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %30 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %26, %25
  br label %50

32:                                               ; preds = %2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = bitcast %struct.TYPE_4__* %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAXCPU, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %43 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %47
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %48, align 8
  br label %49

49:                                               ; preds = %40, %32
  br label %50

50:                                               ; preds = %2, %49, %31
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
