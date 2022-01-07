; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_protect_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_protect_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pmap_protect_pde: sva is not 2mpage aligned\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PG_PROMOTED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @pmap_protect_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_protect_pde(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pmap_global_bit(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pmap_modified_bit(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pmap_rw_bit(i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MA_OWNED, align 4
  %25 = call i32 @PMAP_LOCK_ASSERT(i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PDRMASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %104, %4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @VM_PROT_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PG_MANAGED, align 4
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %16, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = load i32, i32* @PG_MANAGED, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @PG_PS_FRAME, align 4
  %57 = and i32 %55, %56
  %58 = call i32* @PHYS_TO_VM_PAGE(i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  store i32* %59, i32** %12, align 8
  br label %60

60:                                               ; preds = %71, %54
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* @NBPDR, align 8
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = udiv i64 %63, %64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = icmp ult i32* %61, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @vm_page_dirty(i32* %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  br label %60

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %33
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @pg_nx, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @PG_PROMOTED, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = call i32 @atomic_cmpset_long(i32* %96, i32 %97, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %33

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @kernel_pmap, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @pmap_invalidate_pde_page(i32 %111, i32 %112, i32 %113)
  br label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %110
  br label %118

118:                                              ; preds = %117, %91
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local i32 @pmap_global_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @atomic_cmpset_long(i32*, i32, i32) #1

declare dso_local i32 @pmap_invalidate_pde_page(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
