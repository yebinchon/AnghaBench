; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_PS = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@MINCORE_SUPER = common dso_local global i32 0, align 4
@MINCORE_INCORE = common dso_local global i32 0, align 4
@MINCORE_MODIFIED = common dso_local global i32 0, align 4
@MINCORE_MODIFIED_OTHER = common dso_local global i32 0, align 4
@MINCORE_REFERENCED = common dso_local global i32 0, align 4
@MINCORE_REFERENCED_OTHER = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_mincore(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pmap_accessed_bit(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pmap_modified_bit(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pmap_valid_bit(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pmap_rw_bit(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PMAP_LOCK(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @pmap_pde(i32 %25, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PG_PS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PG_PS_FRAME, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PDRMASK, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* @PG_FRAME, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @MINCORE_SUPER, align 4
  store i32 %55, i32* %14, align 4
  br label %64

56:                                               ; preds = %36
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32* @pmap_pde_to_pte(i32* %57, i32 %58)
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PG_FRAME, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %56, %42
  br label %66

65:                                               ; preds = %30, %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  %72 = load i32, i32* @MINCORE_INCORE, align 4
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i32, i32* @MINCORE_MODIFIED, align 4
  %86 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %84, %71
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @MINCORE_REFERENCED, align 4
  %97 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %66
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %105 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %109 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %110 = or i32 %108, %109
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %102
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PG_MANAGED, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = load i32, i32* @PG_MANAGED, align 4
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %118, %119
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %112, %102
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @PMAP_UNLOCK(i32 %126)
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
