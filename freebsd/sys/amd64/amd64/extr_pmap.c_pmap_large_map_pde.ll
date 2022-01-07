; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@X86_PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pmap_large_map_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_large_map_pde(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32* @pmap_large_map_pdpe(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

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
  br label %42

30:                                               ; preds = %6
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @X86_PG_PS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PG_FRAME, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %17
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @PHYS_TO_DMAP(i32 %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @pmap_pde_index(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  ret i32* %49
}

declare dso_local i32* @pmap_large_map_pdpe(i32) #1

declare dso_local i32* @pmap_large_map_getptp(...) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pde_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
