; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i32, i32, %struct.TYPE_2__, i32, %struct.tbl_node* }
%struct.TYPE_2__ = type { i8, i8 }

@TBL_PART_OPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tbl_node* @tbl_alloc(i32 %0, i32 %1, %struct.tbl_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca %struct.tbl_node*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.tbl_node* %2, %struct.tbl_node** %6, align 8
  %8 = call %struct.tbl_node* @mandoc_calloc(i32 1, i32 24)
  store %struct.tbl_node* %8, %struct.tbl_node** %7, align 8
  %9 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %10 = icmp ne %struct.tbl_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %13 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %14 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %13, i32 0, i32 4
  store %struct.tbl_node* %12, %struct.tbl_node** %14, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %18 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %21 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @TBL_PART_OPTS, align 4
  %23 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %24 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %26 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8 9, i8* %27, align 8
  %28 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  %29 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8 46, i8* %30, align 1
  %31 = load %struct.tbl_node*, %struct.tbl_node** %7, align 8
  ret %struct.tbl_node* %31
}

declare dso_local %struct.tbl_node* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
