; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@tcr_el1 = common dso_local global i32 0, align 4
@TCR_ASID_16 = common dso_local global i32 0, align 4
@asid_bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vm.pmap.superpages_enabled\00", align 1
@superpages_enabled = common dso_local global i64 0, align 8
@MAXPAGESIZES = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"pmap_init: can't assign to pagesizes[1]\00", align 1
@L2_SIZE = common dso_local global i64 0, align 8
@asid_set_size = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@asid_set = common dso_local global i32* null, align 8
@ASID_FIRST_AVAILABLE = common dso_local global i32 0, align 4
@asid_next = common dso_local global i32 0, align 4
@asid_set_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"asid set\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@pv_chunks_mutex = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"pmap pv chunk list\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@NPV_LIST_LOCKS = common dso_local global i32 0, align 4
@pv_list_locks = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"pmap pv list\00", align 1
@vm_phys_segs = common dso_local global %struct.TYPE_3__* null, align 8
@vm_phys_nsegs = common dso_local global i32 0, align 4
@pv_table = common dso_local global %struct.md_page* null, align 8
@pv_dummy = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vm_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @tcr_el1, align 4
  %5 = call i32 @READ_SPECIALREG(i32 %4)
  %6 = load i32, i32* @TCR_ASID_16, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 16, i32 8
  store i32 %10, i32* @asid_bits, align 4
  %11 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64* @superpages_enabled)
  %12 = load i64, i64* @superpages_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %0
  %15 = load i32, i32* @MAXPAGESIZES, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64*, i64** @pagesizes, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @L2_SIZE, align 8
  %27 = load i64*, i64** @pagesizes, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %0
  %30 = load i32, i32* @asid_bits, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* @asid_set_size, align 4
  %32 = load i32, i32* @asid_set_size, align 4
  %33 = call i64 @bitstr_size(i32 %32)
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @kmem_malloc(i64 %33, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** @asid_set, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %47, %29
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @ASID_FIRST_AVAILABLE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32*, i32** @asid_set, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @bit_set(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load i32, i32* @ASID_FIRST_AVAILABLE, align 4
  store i32 %51, i32* @asid_next, align 4
  %52 = load i32, i32* @MTX_SPIN, align 4
  %53 = call i32 @mtx_init(i32* @asid_set_mutex, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %52)
  %54 = load i32, i32* @MTX_DEF, align 4
  %55 = call i32 @mtx_init(i32* @pv_chunks_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %66, %50
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @NPV_LIST_LOCKS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32*, i32** @pv_list_locks, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @rw_init(i32* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_phys_segs, align 8
  %71 = load i32, i32* @vm_phys_nsegs, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @L2_SIZE, align 8
  %78 = call i32 @howmany(i32 %76, i64 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = call i64 @round_page(i64 %82)
  store i64 %83, i64* %1, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = load i32, i32* @M_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @kmem_malloc(i64 %84, i32 %87)
  %89 = inttoptr i64 %88 to %struct.md_page*
  store %struct.md_page* %89, %struct.md_page** @pv_table, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %101, %69
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.md_page*, %struct.md_page** @pv_table, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.md_page, %struct.md_page* %95, i64 %97
  %99 = getelementptr inbounds %struct.md_page, %struct.md_page* %98, i32 0, i32 0
  %100 = call i32 @TAILQ_INIT(i32* %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %90

104:                                              ; preds = %90
  %105 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pv_dummy, i32 0, i32 0))
  store i32 1, i32* @vm_initialized, align 4
  ret void
}

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @kmem_malloc(i64, i32) #1

declare dso_local i64 @bitstr_size(i32) #1

declare dso_local i32 @bit_set(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @howmany(i32, i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
