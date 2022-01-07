; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i64, i32, %struct.ibv_mem_node*, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@mm_root = common dso_local global %struct.ibv_mem_node* null, align 8
@IBV_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_mem_node*)* @__mm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mm_add(%struct.ibv_mem_node* %0) #0 {
  %2 = alloca %struct.ibv_mem_node*, align 8
  %3 = alloca %struct.ibv_mem_node*, align 8
  %4 = alloca %struct.ibv_mem_node*, align 8
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %2, align 8
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %4, align 8
  %5 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** @mm_root, align 8
  store %struct.ibv_mem_node* %5, %struct.ibv_mem_node** %3, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %8 = icmp ne %struct.ibv_mem_node* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  store %struct.ibv_mem_node* %10, %struct.ibv_mem_node** %4, align 8
  %11 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %12 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %15 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %20 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %19, i32 0, i32 2
  %21 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %20, align 8
  store %struct.ibv_mem_node* %21, %struct.ibv_mem_node** %3, align 8
  br label %26

22:                                               ; preds = %9
  %23 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %24 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %23, i32 0, i32 3
  %25 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %24, align 8
  store %struct.ibv_mem_node* %25, %struct.ibv_mem_node** %3, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %29 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %32 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %37 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %38 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %37, i32 0, i32 2
  store %struct.ibv_mem_node* %36, %struct.ibv_mem_node** %38, align 8
  br label %43

39:                                               ; preds = %27
  %40 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %41 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %42 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %41, i32 0, i32 3
  store %struct.ibv_mem_node* %40, %struct.ibv_mem_node** %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %45 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %46 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %45, i32 0, i32 4
  store %struct.ibv_mem_node* %44, %struct.ibv_mem_node** %46, align 8
  %47 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %48 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %47, i32 0, i32 3
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %48, align 8
  %49 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %50 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %49, i32 0, i32 2
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %50, align 8
  %51 = load i32, i32* @IBV_RED, align 4
  %52 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %53 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %55 = call i32 @__mm_add_rebalance(%struct.ibv_mem_node* %54)
  ret void
}

declare dso_local i32 @__mm_add_rebalance(%struct.ibv_mem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
