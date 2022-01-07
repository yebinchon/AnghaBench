; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_postinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_postinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }
%struct.l1_ttable = type { i32 }

@maxproc = common dso_local global i32 0, align 4
@PMAP_DOMAINS = common dso_local global i32 0, align 4
@M_VMPMAP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@L1_TABLE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Cannot allocate L1 KVM\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@L2_S_CACHE_MASK = common dso_local global i32 0, align 4
@pte_l2_s_cache_mode_pt = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_postinit() #0 {
  %1 = alloca %struct.l2_bucket*, align 8
  %2 = alloca %struct.l1_ttable*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @maxproc, align 4
  %11 = load i32, i32* @PMAP_DOMAINS, align 4
  %12 = sdiv i32 %10, %11
  %13 = load i32, i32* @maxproc, align 4
  %14 = load i32, i32* @PMAP_DOMAINS, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = add nsw i32 %12, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_VMPMAP, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call %struct.l1_ttable* @malloc(i32 %25, i32 %26, i32 %27)
  store %struct.l1_ttable* %28, %struct.l1_ttable** %2, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %83, %0
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %29
  %34 = load i64, i64* @L1_TABLE_SIZE, align 8
  %35 = load i32, i32* @M_VMPMAP, align 4
  %36 = load i64, i64* @L1_TABLE_SIZE, align 8
  %37 = call i64 @contigmalloc(i64 %34, i32 %35, i32 0, i32 0, i32 -1, i64 %36, i32 0)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @L1_TABLE_SIZE, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %52, %42
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32, i32* @kernel_pmap, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %53, i64 %54)
  store %struct.l2_bucket* %55, %struct.l2_bucket** %1, align 8
  %56 = load %struct.l2_bucket*, %struct.l2_bucket** %1, align 8
  %57 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @l2pte_index(i64 %59)
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @L2_S_CACHE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @pte_l2_s_cache_mode_pt, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @PTE_SYNC(i32* %72)
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @cpu_tlb_flushD_SE(i64 %74)
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %6, align 8
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.l1_ttable*, %struct.l1_ttable** %2, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @pmap_init_l1(%struct.l1_ttable* %80, i32* %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.l1_ttable*, %struct.l1_ttable** %2, align 8
  %87 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %86, i32 1
  store %struct.l1_ttable* %87, %struct.l1_ttable** %2, align 8
  br label %29

88:                                               ; preds = %29
  ret void
}

declare dso_local %struct.l1_ttable* @malloc(i32, i32, i32) #1

declare dso_local i64 @contigmalloc(i64, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i64) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i64) #1

declare dso_local i32 @pmap_init_l1(%struct.l1_ttable*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
