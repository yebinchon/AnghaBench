; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_pdpe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_pdpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"pmap_demote_pdpe: oldpdpe is missing PG_PS and/or PG_V\00", align 1
@PDPSHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pmap_demote_pdpe: failure for va %#lx in pmap %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"pmap_demote_pdpe: oldpdpe is missing PG_A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"pmap_demote_pdpe: oldpdpe is missing PG_M\00", align 1
@NPDEPG = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@pmap_pdpe_demotions = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"pmap_demote_pdpe: success for va %#lx in pmap %p\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @pmap_demote_pdpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_demote_pdpe(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pmap_accessed_bit(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pmap_modified_bit(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pmap_valid_bit(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pmap_rw_bit(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MA_OWNED, align 4
  %29 = call i32 @PMAP_LOCK_ASSERT(i32 %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PG_PS, align 4
  %34 = load i32, i32* %16, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @PG_PS, align 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PDPSHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %47 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @vm_page_alloc(i32* null, i32 %45, i32 %50)
  store i32* %51, i32** %18, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %3
  %54 = load i32, i32* @KTR_PMAP, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @CTR2(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %4, align 4
  br label %128

59:                                               ; preds = %3
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @VM_PAGE_TO_PHYS(i32* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @PHYS_TO_DMAP(i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %10, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @PG_U, align 4
  %72 = and i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %13, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @KASSERT(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %10, align 8
  store i32* %94, i32** %12, align 8
  br label %95

95:                                               ; preds = %110, %59
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @NPDEPG, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = icmp ult i32* %96, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %12, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i64, i64* @NBPDR, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %12, align 8
  br label %95

113:                                              ; preds = %95
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @vtopde(i32 %117)
  %119 = trunc i64 %118 to i32
  %120 = call i32 @pmap_invalidate_page(i32 %116, i32 %119)
  %121 = load i32, i32* @pmap_pdpe_demotions, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @pmap_pdpe_demotions, align 4
  %123 = load i32, i32* @KTR_PMAP, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @CTR2(i32 %123, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %113, %53
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i64 @vtopde(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
