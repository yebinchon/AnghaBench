; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init_pat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_PAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no PAT??\00", align 1
@PAT_INDEX_SIZE = common dso_local global i32 0, align 4
@pat_index = common dso_local global i32* null, align 8
@PAT_WRITE_BACK = common dso_local global i64 0, align 8
@PAT_WRITE_THROUGH = common dso_local global i64 0, align 8
@PAT_UNCACHEABLE = common dso_local global i64 0, align 8
@PAT_WRITE_COMBINING = common dso_local global i64 0, align 8
@PAT_WRITE_PROTECTED = common dso_local global i64 0, align 8
@PAT_UNCACHED = common dso_local global i64 0, align 8
@CR4_PGE = common dso_local global i32 0, align 4
@CR0_NW = common dso_local global i32 0, align 4
@CR0_CD = common dso_local global i32 0, align 4
@MSR_PAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init_pat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @cpu_feature, align 4
  %6 = load i32, i32* @CPUID_PAT, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PAT_INDEX_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** @pat_index, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %12

24:                                               ; preds = %12
  %25 = load i32*, i32** @pat_index, align 8
  %26 = load i64, i64* @PAT_WRITE_BACK, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** @pat_index, align 8
  %29 = load i64, i64* @PAT_WRITE_THROUGH, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 1, i32* %30, align 4
  %31 = load i32*, i32** @pat_index, align 8
  %32 = load i64, i64* @PAT_UNCACHEABLE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 3, i32* %33, align 4
  %34 = load i32*, i32** @pat_index, align 8
  %35 = load i64, i64* @PAT_WRITE_COMBINING, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 6, i32* %36, align 4
  %37 = load i32*, i32** @pat_index, align 8
  %38 = load i64, i64* @PAT_WRITE_PROTECTED, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 5, i32* %39, align 4
  %40 = load i32*, i32** @pat_index, align 8
  %41 = load i64, i64* @PAT_UNCACHED, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 2, i32* %42, align 4
  %43 = load i64, i64* @PAT_WRITE_BACK, align 8
  %44 = call i32 @PAT_VALUE(i32 0, i64 %43)
  %45 = load i64, i64* @PAT_WRITE_THROUGH, align 8
  %46 = call i32 @PAT_VALUE(i32 1, i64 %45)
  %47 = or i32 %44, %46
  %48 = load i64, i64* @PAT_UNCACHED, align 8
  %49 = call i32 @PAT_VALUE(i32 2, i64 %48)
  %50 = or i32 %47, %49
  %51 = load i64, i64* @PAT_UNCACHEABLE, align 8
  %52 = call i32 @PAT_VALUE(i32 3, i64 %51)
  %53 = or i32 %50, %52
  %54 = load i64, i64* @PAT_WRITE_BACK, align 8
  %55 = call i32 @PAT_VALUE(i32 4, i64 %54)
  %56 = or i32 %53, %55
  %57 = load i64, i64* @PAT_WRITE_PROTECTED, align 8
  %58 = call i32 @PAT_VALUE(i32 5, i64 %57)
  %59 = or i32 %56, %58
  %60 = load i64, i64* @PAT_WRITE_COMBINING, align 8
  %61 = call i32 @PAT_VALUE(i32 6, i64 %60)
  %62 = or i32 %59, %61
  %63 = load i64, i64* @PAT_UNCACHEABLE, align 8
  %64 = call i32 @PAT_VALUE(i32 7, i64 %63)
  %65 = or i32 %62, %64
  store i32 %65, i32* %1, align 4
  %66 = call i32 (...) @rcr4()
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @CR4_PGE, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @load_cr4(i32 %70)
  %72 = call i32 (...) @rcr0()
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @CR0_NW, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* @CR0_CD, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @load_cr0(i32 %78)
  %80 = call i32 (...) @wbinvd()
  %81 = call i32 (...) @invltlb()
  %82 = load i32, i32* @MSR_PAT, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @wrmsr(i32 %82, i32 %83)
  %85 = call i32 (...) @wbinvd()
  %86 = call i32 (...) @invltlb()
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @load_cr0(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @load_cr4(i32 %89)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PAT_VALUE(i32, i64) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @load_cr0(i32) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @invltlb(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
