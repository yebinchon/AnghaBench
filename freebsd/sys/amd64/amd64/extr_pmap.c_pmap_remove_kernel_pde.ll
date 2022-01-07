; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_kernel_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_kernel_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@kernel_pmap = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"pmap %p is not kernel_pmap\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pmap_remove_kernel_pde: Missing pt page.\00", align 1
@X86_PG_M = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@workaround_erratum383 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32)* @pmap_remove_kernel_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_kernel_pde(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @kernel_pmap, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %13, i8* %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @PMAP_LOCK_ASSERT(i64 %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_4__* @pmap_remove_pt_page(i64 %20, i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @X86_PG_M, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @X86_PG_A, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @X86_PG_RW, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @X86_PG_V, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @PHYS_TO_DMAP(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @pagezero(i8* %46)
  br label %48

48:                                               ; preds = %43, %27
  %49 = load i64, i64* @workaround_erratum383, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pmap_update_pde(i64 %52, i32 %53, i32* %54, i32 %55)
  br label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @pde_store(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @vtopte(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 @pmap_invalidate_page(i64 %62, i32 %65)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local %struct.TYPE_4__* @pmap_remove_pt_page(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__*) #1

declare dso_local i32 @pagezero(i8*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_update_pde(i64, i32, i32*, i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i64, i32) #1

declare dso_local i64 @vtopte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
