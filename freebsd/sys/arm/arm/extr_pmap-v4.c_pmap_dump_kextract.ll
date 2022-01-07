; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_dump_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_dump_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.l2_dtable**, %struct.TYPE_4__* }
%struct.l2_dtable = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@kernel_pmap = common dso_local global %struct.TYPE_6__* null, align 8
@L1_S_SUPERSEC = common dso_local global i32 0, align 4
@L1_SUP_FRAME = common dso_local global i32 0, align 4
@L1_SUP_OFFSET = common dso_local global i32 0, align 4
@L1_S_FRAME = common dso_local global i32 0, align 4
@L1_S_OFFSET = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@PTE_KERNEL = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@L2_TYPE_L = common dso_local global i32 0, align 4
@L2_L_FRAME = common dso_local global i32 0, align 4
@L2_L_OFFSET = common dso_local global i32 0, align 4
@L2_S_FRAME = common dso_local global i32 0, align 4
@L2_S_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_dump_kextract(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.l2_dtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @L1_IDX(i32 %11)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @l1pte_section_p(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @L1_S_SUPERSEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @L1_SUP_FRAME, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @L1_SUP_OFFSET, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %9, align 4
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @L1_S_FRAME, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @L1_S_OFFSET, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @L2_S_PROTO, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PTE_KERNEL, align 4
  %50 = load i32, i32* @VM_PROT_READ, align 4
  %51 = load i32, i32* @VM_PROT_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @L2_S_PROT(i32 %49, i32 %52)
  %54 = or i32 %48, %53
  store i32 %54, i32* %8, align 4
  br label %108

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.l2_dtable**, %struct.l2_dtable*** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @L2_IDX(i64 %59)
  %61 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %58, i64 %60
  %62 = load %struct.l2_dtable*, %struct.l2_dtable** %61, align 8
  store %struct.l2_dtable* %62, %struct.l2_dtable** %5, align 8
  %63 = load %struct.l2_dtable*, %struct.l2_dtable** %5, align 8
  %64 = icmp eq %struct.l2_dtable* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.l2_dtable*, %struct.l2_dtable** %5, align 8
  %67 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @L2_BUCKET(i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %7, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %65, %55
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %109

76:                                               ; preds = %65
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @l2pte_index(i32 %78)
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %109

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @L2_TYPE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @L2_TYPE_L, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @L2_L_FRAME, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @L2_L_OFFSET, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %94, %97
  store i32 %98, i32* %9, align 4
  br label %107

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @L2_S_FRAME, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @L2_S_OFFSET, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %102, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %45
  br label %109

109:                                              ; preds = %108, %84, %75
  %110 = load i32*, i32** %4, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %4, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i64 @L1_IDX(i32) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i64 @L2_BUCKET(i64) #1

declare dso_local i64 @l2pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
