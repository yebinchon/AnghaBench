; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_block_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_block_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i32, i64 }

@QUANTUM = common dso_local global i64 0, align 8
@NPSIZES = common dso_local global i64 0, align 8
@HUGEPAGE_MASK = common dso_local global i64 0, align 8
@opt_metadata_thp = common dso_local global i64 0, align 8
@metadata_thp_always = common dso_local global i64 0, align 8
@metadata_thp_auto = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, %struct.TYPE_6__*, i32*, i32, i32*, i64*, i64, i64)* @base_block_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @base_block_alloc(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3, i32* %4, i64* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i64, i64* @QUANTUM, align 8
  %29 = call i64 @ALIGNMENT_CEILING(i64 %27, i64 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i64 @ALIGNMENT_CEILING(i64 %30, i64 %31)
  store i64 %32, i64* %18, align 8
  store i64 24, i64* %19, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %17, align 8
  %35 = call i64 @ALIGNMENT_CEILING(i64 %33, i64 %34)
  %36 = load i64, i64* %19, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %20, align 8
  %38 = load i64, i64* %19, align 8
  %39 = load i64, i64* %20, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %18, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @sz_psz2u(i64 %42)
  %44 = call i64 @HUGEPAGE_CEILING(i32 %43)
  store i64 %44, i64* %21, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @NPSIZES, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  br label %58

55:                                               ; preds = %8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %54, %51 ], [ %57, %55 ]
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @sz_pind2sz(i32 %60)
  %62 = call i64 @HUGEPAGE_CEILING(i32 %61)
  store i64 %62, i64* %23, align 8
  %63 = load i64, i64* %21, align 8
  %64 = load i64, i64* %23, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* %21, align 8
  br label %70

68:                                               ; preds = %58
  %69 = load i64, i64* %23, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  store i64 %71, i64* %24, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i64, i64* %24, align 8
  %76 = call i64 @base_map(i32* %72, i32* %73, i32 %74, i64 %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %25, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %79 = icmp eq %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  br label %165

81:                                               ; preds = %70
  %82 = call i64 (...) @metadata_thp_madvise()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %86 = bitcast %struct.TYPE_7__* %85 to i8*
  store i8* %86, i8** %26, align 8
  %87 = load i8*, i8** %26, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load i64, i64* @HUGEPAGE_MASK, align 8
  %90 = and i64 %88, %89
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* @HUGEPAGE_MASK, align 8
  %95 = and i64 %93, %94
  %96 = icmp eq i64 %95, 0
  br label %97

97:                                               ; preds = %92, %84
  %98 = phi i1 [ false, %84 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i64, i64* @opt_metadata_thp, align 8
  %102 = load i64, i64* @metadata_thp_always, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i8*, i8** %26, align 8
  %106 = load i64, i64* %24, align 8
  %107 = call i32 @pages_huge(i8* %105, i64 %106)
  br label %137

108:                                              ; preds = %97
  %109 = load i64, i64* @opt_metadata_thp, align 8
  %110 = load i64, i64* @metadata_thp_auto, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = icmp ne %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load i32*, i32** %10, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @malloc_mutex_lock(i32* %116, i32* %118)
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = call i32 @base_auto_thp_switch(i32* %120, %struct.TYPE_6__* %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load i8*, i8** %26, align 8
  %129 = load i64, i64* %24, align 8
  %130 = call i32 @pages_huge(i8* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %115
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = call i32 @malloc_mutex_unlock(i32* %132, i32* %134)
  br label %136

136:                                              ; preds = %131, %112, %108
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137, %81
  %139 = load i64, i64* %24, align 8
  %140 = call i32 @sz_psz2ind(i64 %139)
  %141 = load i32*, i32** %14, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i64, i64* %24, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32* null, i32** %146, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %19, align 8
  %149 = icmp uge i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i64*, i64** %15, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %156 = ptrtoint %struct.TYPE_7__* %155 to i64
  %157 = load i64, i64* %19, align 8
  %158 = add i64 %156, %157
  %159 = inttoptr i64 %158 to i8*
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %19, align 8
  %162 = sub i64 %160, %161
  %163 = call i32 @base_extent_init(i64* %152, i32* %154, i8* %159, i64 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %164, %struct.TYPE_7__** %9, align 8
  br label %165

165:                                              ; preds = %138, %80
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  ret %struct.TYPE_7__* %166
}

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i64 @HUGEPAGE_CEILING(i32) #1

declare dso_local i32 @sz_psz2u(i64) #1

declare dso_local i32 @sz_pind2sz(i32) #1

declare dso_local i64 @base_map(i32*, i32*, i32, i64) #1

declare dso_local i64 @metadata_thp_madvise(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pages_huge(i8*, i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @base_auto_thp_switch(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @sz_psz2ind(i64) #1

declare dso_local i32 @base_extent_init(i64*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
