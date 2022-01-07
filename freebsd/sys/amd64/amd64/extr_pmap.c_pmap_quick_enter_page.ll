; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_quick_enter_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_quick_enter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@dmaplimit = common dso_local global i32 0, align 4
@qframe_mtx = common dso_local global i32 0, align 4
@qframe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"qframe busy\00", align 1
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_quick_enter_page(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @dmaplimit, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PHYS_TO_DMAP(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = call i32 @mtx_lock_spin(i32* @qframe_mtx)
  %15 = load i32, i32* @qframe, align 4
  %16 = call i64* @vtopte(i32 %15)
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @qframe, align 4
  %22 = call i64* @vtopte(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @X86_PG_RW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @X86_PG_V, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @X86_PG_A, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @X86_PG_M, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @kernel_pmap, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pmap_cache_bits(i32 %32, i32 %36, i32 0)
  %38 = or i32 %31, %37
  %39 = call i32 @pte_store(i64* %22, i32 %38)
  %40 = load i32, i32* @qframe, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %13, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64* @vtopte(i32) #1

declare dso_local i32 @pte_store(i64*, i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
