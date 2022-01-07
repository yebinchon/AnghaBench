; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_madt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_madt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.madt_table_data = type { i32*, i32 }

@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"gic: Already have a distributor table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @madt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madt_handler(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.madt_table_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.madt_table_data*
  store %struct.madt_table_data* %7, %struct.madt_table_data** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 129, label %11
    i32 128, label %30
  ]

11:                                               ; preds = %2
  %12 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %13 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* @bootverbose, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %21 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %16
  br label %32

25:                                               ; preds = %11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = bitcast %struct.TYPE_3__* %26 to i32*
  %28 = load %struct.madt_table_data*, %struct.madt_table_data** %5, align 8
  %29 = getelementptr inbounds %struct.madt_table_data, %struct.madt_table_data* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  br label %32

30:                                               ; preds = %2
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %30, %25, %24
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
