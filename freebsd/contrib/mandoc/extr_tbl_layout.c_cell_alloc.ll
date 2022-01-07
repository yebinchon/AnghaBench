; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_cell_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_cell_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_cell = type { i32, i64, %struct.tbl_cell*, i32 }
%struct.tbl_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tbl_row = type { %struct.tbl_cell*, %struct.tbl_cell* }

@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tbl_cell* (%struct.tbl_node*, %struct.tbl_row*, i32)* @cell_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tbl_cell* @cell_alloc(%struct.tbl_node* %0, %struct.tbl_row* %1, i32 %2) #0 {
  %4 = alloca %struct.tbl_node*, align 8
  %5 = alloca %struct.tbl_row*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tbl_cell*, align 8
  %8 = alloca %struct.tbl_cell*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %4, align 8
  store %struct.tbl_row* %1, %struct.tbl_row** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call %struct.tbl_cell* @mandoc_calloc(i32 1, i32 32)
  store %struct.tbl_cell* %9, %struct.tbl_cell** %7, align 8
  %10 = load i32, i32* @SIZE_MAX, align 4
  %11 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %12 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %15 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tbl_row*, %struct.tbl_row** %5, align 8
  %17 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %16, i32 0, i32 0
  %18 = load %struct.tbl_cell*, %struct.tbl_cell** %17, align 8
  store %struct.tbl_cell* %18, %struct.tbl_cell** %8, align 8
  %19 = icmp ne %struct.tbl_cell* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %22 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %23 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %22, i32 0, i32 2
  store %struct.tbl_cell* %21, %struct.tbl_cell** %23, align 8
  %24 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %25 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %29 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %32 = load %struct.tbl_row*, %struct.tbl_row** %5, align 8
  %33 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %32, i32 0, i32 1
  store %struct.tbl_cell* %31, %struct.tbl_cell** %33, align 8
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %36 = load %struct.tbl_row*, %struct.tbl_row** %5, align 8
  %37 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %36, i32 0, i32 0
  store %struct.tbl_cell* %35, %struct.tbl_cell** %37, align 8
  %38 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %39 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %43 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %48 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %52 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %34
  %55 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  ret %struct.tbl_cell* %55
}

declare dso_local %struct.tbl_cell* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
