; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE1_OFFSET = common dso_local global i32 0, align 4
@MINCORE_SUPER = common dso_local global i32 0, align 4
@MINCORE_INCORE = common dso_local global i32 0, align 4
@MINCORE_MODIFIED = common dso_local global i32 0, align 4
@MINCORE_MODIFIED_OTHER = common dso_local global i32 0, align 4
@PTE1_A = common dso_local global i32 0, align 4
@MINCORE_REFERENCED = common dso_local global i32 0, align 4
@MINCORE_REFERENCED_OTHER = common dso_local global i32 0, align 4
@PTE2_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_mincore(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PMAP_LOCK(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @pmap_pte1(i32 %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @pte1_load(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @pte1_is_section(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pte1_pa(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PTE1_OFFSET, align 4
  %29 = and i32 %27, %28
  %30 = or i32 %26, %29
  %31 = call i32 @trunc_page(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pte1_is_managed(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @MINCORE_SUPER, align 4
  %35 = load i32, i32* @MINCORE_INCORE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @pte1_is_dirty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load i32, i32* @MINCORE_MODIFIED, align 4
  %42 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %40, %24
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PTE1_A, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @MINCORE_REFERENCED, align 4
  %53 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %98

58:                                               ; preds = %3
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @pte1_is_link(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32* @pmap_pte2(i32 %63, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @pte2_load(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @pmap_pte2_release(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @pte2_pa(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @pte2_is_managed(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @MINCORE_INCORE, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @pte2_is_dirty(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load i32, i32* @MINCORE_MODIFIED, align 4
  %80 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %78, %62
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @PTE2_A, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @MINCORE_REFERENCED, align 4
  %91 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %89, %84
  br label %97

96:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %57
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %101 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %105 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %106 = or i32 %104, %105
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108, %98
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @PMAP_UNLOCK(i32 %115)
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pte1(i32, i32) #1

declare dso_local i32 @pte1_load(i32*) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @pte1_pa(i32) #1

declare dso_local i32 @pte1_is_managed(i32) #1

declare dso_local i64 @pte1_is_dirty(i32) #1

declare dso_local i64 @pte1_is_link(i32) #1

declare dso_local i32* @pmap_pte2(i32, i32) #1

declare dso_local i32 @pte2_load(i32*) #1

declare dso_local i32 @pmap_pte2_release(i32*) #1

declare dso_local i32 @pte2_pa(i32) #1

declare dso_local i32 @pte2_is_managed(i32) #1

declare dso_local i64 @pte2_is_dirty(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
