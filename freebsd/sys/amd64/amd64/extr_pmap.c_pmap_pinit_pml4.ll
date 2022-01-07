; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pinit_pml4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pinit_pml4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@NKPML4E = common dso_local global i32 0, align 4
@KPDPphys = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@KPML4BASE = common dso_local global i32 0, align 4
@ndmpdpphys = common dso_local global i32 0, align 4
@DMPDPphys = common dso_local global i32 0, align 4
@DMPML4I = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@PML4PML4I = common dso_local global i64 0, align 8
@lm_ents = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_2__* null, align 8
@LMSPML4I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pinit_pml4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @VM_PAGE_TO_PHYS(i32 %5)
  %7 = call i64 @PHYS_TO_DMAP(i32 %6)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NKPML4E, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32, i32* @KPDPphys, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ptoa(i32 %15)
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @X86_PG_RW, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @X86_PG_V, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @KPML4BASE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ndmpdpphys, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* @DMPDPphys, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ptoa(i32 %38)
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* @X86_PG_RW, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @X86_PG_V, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @DMPML4I, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @VM_PAGE_TO_PHYS(i32 %55)
  %57 = load i32, i32* @X86_PG_V, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @X86_PG_RW, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @X86_PG_A, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @X86_PG_M, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %3, align 8
  %66 = load i64, i64* @PML4PML4I, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %88, %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @lm_ents, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_pmap, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @LMSPML4I, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @LMSPML4I, align 4
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %68

91:                                               ; preds = %68
  ret void
}

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @ptoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
