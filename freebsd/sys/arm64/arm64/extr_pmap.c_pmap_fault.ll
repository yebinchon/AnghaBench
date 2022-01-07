; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_FAILURE = common dso_local global i32 0, align 4
@ISS_DATA_DFSC_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ISS_DATA_WnR = common dso_local global i32 0, align 4
@ATTR_SW_DBM = common dso_local global i32 0, align 4
@ATTR_AP_RW_BIT = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_fault(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ESR_ELx_EXCEPTION(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %20 [
    i32 138, label %19
    i32 139, label %19
    i32 140, label %19
    i32 141, label %19
  ]

19:                                               ; preds = %3, %3, %3, %3
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %4, align 4
  br label %118

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ISS_DATA_DFSC_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %116 [
    i32 137, label %26
    i32 136, label %26
    i32 135, label %26
    i32 134, label %42
    i32 133, label %42
    i32 132, label %42
    i32 131, label %88
    i32 130, label %88
    i32 129, label %88
    i32 128, label %88
  ]

26:                                               ; preds = %22, %22, %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @PMAP_LOCK(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @pmap_pte(i32 %29, i32 %30, i32* %13)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @ATTR_AF, align 4
  %37 = call i32 @pmap_set_bits(i32* %35, i32 %36)
  %38 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @PMAP_UNLOCK(i32 %40)
  br label %116

42:                                               ; preds = %22, %22, %22
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 140
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 141
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ISS_DATA_WnR, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %118

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @PMAP_LOCK(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32* @pmap_pte(i32 %58, i32 %59, i32* %13)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %85

63:                                               ; preds = %55
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @pmap_load(i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @ATTR_SW_DBM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @ATTR_AP_RO, align 4
  %74 = call i32 @ATTR_AP(i32 %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %79 = call i32 @pmap_clear_bits(i32* %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @pmap_invalidate_page(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %63, %55
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @PMAP_UNLOCK(i32 %86)
  br label %116

88:                                               ; preds = %22, %22, %22, %22
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @kernel_pmap, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @pmap_kextract(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %96, %92
  br label %115

99:                                               ; preds = %88
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @PMAP_LOCK(i32 %100)
  %102 = call i32 (...) @intr_disable()
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @arm64_address_translate_s1e0r(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @intr_restore(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @PMAP_UNLOCK(i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @PAR_SUCCESS(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %112, %99
  br label %115

115:                                              ; preds = %114, %98
  br label %116

116:                                              ; preds = %22, %115, %85, %39
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %53, %20
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @ESR_ELx_EXCEPTION(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pte(i32, i32, i32*) #1

declare dso_local i32 @pmap_set_bits(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @pmap_clear_bits(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @arm64_address_translate_s1e0r(i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @PAR_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
