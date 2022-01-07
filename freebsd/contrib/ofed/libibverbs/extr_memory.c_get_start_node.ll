; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_get_start_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_get_start_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_mem_node* (i64, i64, i32)* @get_start_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_mem_node* @get_start_node(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_mem_node*, align 8
  %8 = alloca %struct.ibv_mem_node*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.ibv_mem_node* @__mm_find_start(i64 %9, i64 %10)
  store %struct.ibv_mem_node* %11, %struct.ibv_mem_node** %7, align 8
  %12 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  %13 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.ibv_mem_node* @split_range(%struct.ibv_mem_node* %18, i64 %19)
  store %struct.ibv_mem_node* %20, %struct.ibv_mem_node** %7, align 8
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  %23 = call %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node* %22)
  store %struct.ibv_mem_node* %23, %struct.ibv_mem_node** %8, align 8
  %24 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %8, align 8
  %25 = icmp ne %struct.ibv_mem_node* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %8, align 8
  %28 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  %31 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  %39 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %8, align 8
  %40 = call %struct.ibv_mem_node* @merge_ranges(%struct.ibv_mem_node* %38, %struct.ibv_mem_node* %39)
  store %struct.ibv_mem_node* %40, %struct.ibv_mem_node** %7, align 8
  br label %41

41:                                               ; preds = %37, %26, %21
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %7, align 8
  ret %struct.ibv_mem_node* %43
}

declare dso_local %struct.ibv_mem_node* @__mm_find_start(i64, i64) #1

declare dso_local %struct.ibv_mem_node* @split_range(%struct.ibv_mem_node*, i64) #1

declare dso_local %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node*) #1

declare dso_local %struct.ibv_mem_node* @merge_ranges(%struct.ibv_mem_node*, %struct.ibv_mem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
