; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i64*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"pmap_release: pmap resident count %ld != 0\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"pmap_release: pmap has reserved page table page(s)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"releasing active pmap %p\00", align 1
@NKPML4E = common dso_local global i32 0, align 4
@KPML4BASE = common dso_local global i32 0, align 4
@ndmpdpphys = common dso_local global i32 0, align 4
@DMPML4I = common dso_local global i32 0, align 4
@PML4PML4I = common dso_local global i64 0, align 8
@lm_ents = common dso_local global i32 0, align 4
@LMSPML4I = common dso_local global i32 0, align 4
@PT_X86 = common dso_local global i64 0, align 8
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_release(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %10, i8* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = call i32 @vm_radix_is_empty(i32* %18)
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = call i32 @CPU_EMPTY(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = bitcast %struct.TYPE_5__* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = ptrtoint i64* %29 to i32
  %31 = call i32 @DMAP_TO_PHYS(i32 %30)
  %32 = call i32 @PHYS_TO_VM_PAGE(i32 %31)
  store i32 %32, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %46, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NKPML4E, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* @KPML4BASE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %33

49:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @ndmpdpphys, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* @DMPML4I, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @PML4PML4I, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 0, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %85, %66
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @lm_ents, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* @LMSPML4I, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @vm_page_unwire_noq(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @vm_page_free_zero(i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 @DMAP_TO_PHYS(i32 %101)
  %103 = call i32 @PHYS_TO_VM_PAGE(i32 %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @vm_page_unwire_noq(i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @vm_page_free(i32 %106)
  br label %108

108:                                              ; preds = %97, %88
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PT_X86, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load i32, i32* @cpu_stdext_feature2, align 4
  %116 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = call i32 @rangeset_fini(i32* %121)
  br label %123

123:                                              ; preds = %119, %114, %108
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_radix_is_empty(i32*) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free_zero(i32) #1

declare dso_local i32 @vm_page_free(i32) #1

declare dso_local i32 @rangeset_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
