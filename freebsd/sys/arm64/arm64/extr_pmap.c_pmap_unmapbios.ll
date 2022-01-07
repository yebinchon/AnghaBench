; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_unmapbios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_unmapbios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_preinit_mapping = type { i64, i64, i64 }

@L2_SIZE = common dso_local global i32 0, align 4
@L2_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"pmap_unmapbios: invalid size %lx\00", align 1
@PMAP_PREINIT_MAPPING_COUNT = common dso_local global i32 0, align 4
@pmap_preinit_mapping = common dso_local global %struct.pmap_preinit_mapping* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"pmap_unmapbios: size mismatch\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"pmap_unmapbios: Invalid page entry, va: 0x%lx\00", align 1
@vm_initialized = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"pmap_unmapbios: Invalid level %d\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unmapbios(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pmap_preinit_mapping*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @L2_SIZE, align 4
  %20 = call i64 @roundup2(i64 %18, i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @L2_SIZE, align 4
  %23 = call i64 @rounddown2(i64 %21, i32 %22)
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @L2_SHIFT, align 8
  %26 = ashr i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %30, i8* %32)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %94, %2
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PMAP_PREINIT_MAPPING_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %34
  %39 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** @pmap_preinit_mapping, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %39, i64 %41
  store %struct.pmap_preinit_mapping* %42, %struct.pmap_preinit_mapping** %5, align 8
  %43 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %44 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %38
  %49 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %50 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %57 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %59 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %61 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  store i32 1, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @L2_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* @L2_SIZE, align 4
  %68 = call i64 @rounddown2(i64 %66, i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* @kernel_pmap, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i32* @pmap_pde(i32 %71, i64 %72, i32* %12)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %8, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @KASSERT(i32 %76, i8* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32* @pmap_l1_to_l2(i32* %80, i64 %81)
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @pmap_clear(i32* %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %48
  br label %97

90:                                               ; preds = %48
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %90, %38
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %34

97:                                               ; preds = %89, %34
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @kernel_pmap, align 4
  %102 = call i32 @pmap_invalidate_all(i32 %101)
  br label %149

103:                                              ; preds = %97
  %104 = load i64, i64* @vm_initialized, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %149

106:                                              ; preds = %103
  %107 = load i64, i64* %3, align 8
  %108 = load i64, i64* @PAGE_MASK, align 8
  %109 = and i64 %107, %108
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %4, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i64 @round_page(i64 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @trunc_page(i64 %114)
  store i64 %115, i64* %3, align 8
  %116 = load i32, i32* @kernel_pmap, align 4
  %117 = load i64, i64* %3, align 8
  %118 = call i32* @pmap_pde(i32 %116, i64 %117, i32* %12)
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %3, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @KASSERT(i32 %121, i8* %123)
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @KASSERT(i32 %127, i8* %130)
  store i64 0, i64* %7, align 8
  br label %132

132:                                              ; preds = %141, %106
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %4, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* %7, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @pmap_kremove(i64 %139)
  br label %141

141:                                              ; preds = %136
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %7, align 8
  br label %132

145:                                              ; preds = %132
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @kva_free(i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %100, %145, %103
  ret void
}

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pde(i32, i64, i32*) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i64) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_all(i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @pmap_kremove(i64) #1

declare dso_local i32 @kva_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
