; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_demote_l1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_demote_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_demote_l1: Demoting a non-block entry\00", align 1
@L1_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"pmap_demote_l1: Invalid virtual address %#lx\00", align 1
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"pmap_demote_l1: Level 1 table shouldn't be managed\00", align 1
@L1_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"pmap_demote_l1: failure for va %#lx in pmap %p\00", align 1
@ATTR_MASK = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@L2_BLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid l2 page (%lx != %lx)\00", align 1
@L3_OFFSET = common dso_local global i32 0, align 4
@CACHED_MEMORY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@L1_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i64)* @pmap_demote_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_demote_l1(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(i32 %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @pmap_load(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @L1_BLOCK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @L1_OFFSET, align 8
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %7, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %32, i8* %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = icmp sle i64 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %3
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @L1_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32*, i32** %6, align 8
  %51 = ptrtoint i32* %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i64 @kva_alloc(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  br label %169

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %46, %3
  %61 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %62 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %65 = or i32 %63, %64
  %66 = call i32* @vm_page_alloc(i32* null, i32 0, i32 %65)
  store i32* %66, i32** %14, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i32, i32* @KTR_PMAP, align 4
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @CTR2(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %70, i32 %71)
  store i32* null, i32** %4, align 8
  br label %169

73:                                               ; preds = %60
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @VM_PAGE_TO_PHYS(i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @PHYS_TO_DMAP(i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @ATTR_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ATTR_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %9, align 4
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %103, %73
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @Ln_ENTRIES, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i64, i64* @L2_SIZE, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load i32, i32* @L2_BLOCK, align 4
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %109, %115
  %117 = zext i1 %116 to i32
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = load i32, i32* @L2_BLOCK, align 4
  %126 = or i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @KASSERT(i32 %117, i8* %128)
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %106
  %133 = load i64, i64* %11, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = call i32 @DMAP_TO_PHYS(i64 %136)
  %138 = load i32, i32* @L3_OFFSET, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = load i32, i32* @CACHED_MEMORY, align 4
  %142 = call i32 @pmap_kenter(i64 %133, i32 %134, i32 %140, i32 %141)
  %143 = load i64, i64* %11, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = ptrtoint i32* %144 to i64
  %146 = load i64, i64* @PAGE_MASK, align 8
  %147 = and i64 %145, %146
  %148 = add nsw i64 %143, %147
  %149 = inttoptr i64 %148 to i32*
  store i32* %149, i32** %6, align 8
  br label %150

150:                                              ; preds = %132, %106
  %151 = load i32, i32* %5, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @L1_TABLE, align 4
  %155 = or i32 %153, %154
  %156 = load i64, i64* %7, align 8
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = call i32 @pmap_update_entry(i32 %151, i32* %152, i32 %155, i64 %156, i32 %157)
  %159 = load i64, i64* %11, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %150
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @pmap_kremove(i64 %162)
  %164 = load i64, i64* %11, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = call i32 @kva_free(i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %150
  %168 = load i32*, i32** %8, align 8
  store i32* %168, i32** %4, align 8
  br label %169

169:                                              ; preds = %167, %68, %58
  %170 = load i32*, i32** %4, align 8
  ret i32* %170
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local i32* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_kenter(i64, i32, i32, i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @pmap_update_entry(i32, i32*, i32, i64, i32) #1

declare dso_local i32 @pmap_kremove(i64) #1

declare dso_local i32 @kva_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
