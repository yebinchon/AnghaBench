; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@X86_PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pmap_large_map_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_large_map_pte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32* @pmap_large_map_pde(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = call i32* (...) @pmap_large_map_getptp()
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %6

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @VM_PAGE_TO_PHYS(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @X86_PG_A, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @X86_PG_RW, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @X86_PG_V, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @pg_nx, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = call i32 @DMAP_TO_PHYS(i64 %31)
  %33 = call %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %49

37:                                               ; preds = %6
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @X86_PG_PS, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @MPASS(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PG_FRAME, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %37, %17
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @PHYS_TO_DMAP(i32 %50)
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @pmap_pte_index(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  ret i32* %56
}

declare dso_local i32* @pmap_large_map_pde(i32) #1

declare dso_local i32* @pmap_large_map_getptp(...) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
