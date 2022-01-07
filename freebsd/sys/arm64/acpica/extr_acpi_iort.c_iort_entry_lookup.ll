; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_entry_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_entry_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iort_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iort_map_entry* }
%struct.iort_map_entry = type { i64, i64, i32, i64, %struct.iort_node* }

@ACPI_IORT_ID_SINGLE_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iort_node* (%struct.iort_node*, i64, i64*)* @iort_entry_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iort_node* @iort_entry_lookup(%struct.iort_node* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.iort_node*, align 8
  %5 = alloca %struct.iort_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.iort_map_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.iort_node* %0, %struct.iort_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.iort_node*, %struct.iort_node** %5, align 8
  %11 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.iort_map_entry*, %struct.iort_map_entry** %12, align 8
  store %struct.iort_map_entry* %13, %struct.iort_map_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.iort_node*, %struct.iort_node** %5, align 8
  %17 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %22 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %29 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %39

33:                                               ; preds = %26, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %38 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %37, i32 1
  store %struct.iort_map_entry* %38, %struct.iort_map_entry** %8, align 8
  br label %14

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.iort_node*, %struct.iort_node** %5, align 8
  %42 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store %struct.iort_node* null, %struct.iort_node** %4, align 8
  br label %73

46:                                               ; preds = %39
  %47 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %48 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ACPI_IORT_ID_SINGLE_MAPPING, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %55 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %59 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = add nsw i64 %56, %61
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  br label %69

64:                                               ; preds = %46
  %65 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %66 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %53
  %70 = load %struct.iort_map_entry*, %struct.iort_map_entry** %8, align 8
  %71 = getelementptr inbounds %struct.iort_map_entry, %struct.iort_map_entry* %70, i32 0, i32 4
  %72 = load %struct.iort_node*, %struct.iort_node** %71, align 8
  store %struct.iort_node* %72, %struct.iort_node** %4, align 8
  br label %73

73:                                               ; preds = %69, %45
  %74 = load %struct.iort_node*, %struct.iort_node** %4, align 8
  ret %struct.iort_node* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
