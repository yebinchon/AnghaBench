; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MINCORE_INCORE = common dso_local global i32 0, align 4
@L2_S_PROT_W = common dso_local global i32 0, align 4
@MINCORE_MODIFIED = common dso_local global i32 0, align 4
@MINCORE_MODIFIED_OTHER = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PVF_REF = common dso_local global i32 0, align 4
@MINCORE_REFERENCED = common dso_local global i32 0, align 4
@MINCORE_REFERENCED_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_mincore(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2_bucket*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PMAP_LOCK(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %17, i32 %18)
  store %struct.l2_bucket* %19, %struct.l2_bucket** %8, align 8
  %20 = load %struct.l2_bucket*, %struct.l2_bucket** %8, align 8
  %21 = icmp eq %struct.l2_bucket* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PMAP_UNLOCK(i32 %23)
  store i32 0, i32* %4, align 4
  br label %105

25:                                               ; preds = %3
  %26 = load %struct.l2_bucket*, %struct.l2_bucket** %8, align 8
  %27 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @l2pte_index(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @l2pte_valid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @PMAP_UNLOCK(i32 %38)
  store i32 0, i32* %4, align 4
  br label %105

40:                                               ; preds = %25
  %41 = load i32, i32* @MINCORE_INCORE, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @L2_S_PROT_W, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @MINCORE_MODIFIED, align 4
  %48 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %40
  store i32 0, i32* %14, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @l2pte_pa(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %55)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %12, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VPO_UNMANAGED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %59, %52
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PVF_REF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @MINCORE_REFERENCED, align 4
  %80 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %78, %70
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %88 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %92 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %93 = or i32 %91, %92
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95, %85
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @PMAP_UNLOCK(i32 %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %37, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i32 @l2pte_valid(i32) #1

declare dso_local i32 @l2pte_pa(i32) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
