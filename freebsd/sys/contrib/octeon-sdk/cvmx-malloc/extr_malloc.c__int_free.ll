; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_30__*, %struct.TYPE_30__**, i64 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_30__*, %struct.TYPE_30__* }

@PREV_INUSE = common dso_local global i64 0, align 8
@FASTBIN_CONSOLIDATION_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32*)* @_int_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_int_free(%struct.TYPE_29__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_30__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %158

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_30__* @mem2chunk(i32* %17)
  store %struct.TYPE_30__* %18, %struct.TYPE_30__** %5, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = call i64 @chunksize(%struct.TYPE_30__* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = call i32 @check_inuse_chunk(%struct.TYPE_29__* %21, %struct.TYPE_30__* %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ule i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %31 = call i32 @set_fastchunks(%struct.TYPE_29__* %30)
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @fastbin_index(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %34, i64 %36
  store %struct.TYPE_30__** %37, %struct.TYPE_30__*** %7, align 8
  %38 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 2
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %41, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %43, align 8
  br label %157

44:                                               ; preds = %16
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %46 = call i32 @chunk_is_mmapped(%struct.TYPE_30__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %156, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call %struct.TYPE_30__* @chunk_at_offset(%struct.TYPE_30__* %49, i64 %50)
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %8, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %53 = call i64 @chunksize(%struct.TYPE_30__* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sgt i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = call i32 @prev_inuse(%struct.TYPE_30__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %48
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub nsw i64 0, %69
  %71 = call %struct.TYPE_30__* @chunk_at_offset(%struct.TYPE_30__* %68, i64 %70)
  store %struct.TYPE_30__* %71, %struct.TYPE_30__** %5, align 8
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %75 = call i32 @unlink(%struct.TYPE_30__* %72, %struct.TYPE_30__* %73, %struct.TYPE_30__* %74)
  br label %76

76:                                               ; preds = %61, %48
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  %81 = icmp ne %struct.TYPE_30__* %77, %80
  br i1 %81, label %82, label %128

82:                                               ; preds = %76
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @inuse_bit_at_offset(%struct.TYPE_30__* %83, i64 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %92 = call i32 @unlink(%struct.TYPE_30__* %89, %struct.TYPE_30__* %90, %struct.TYPE_30__* %91)
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %6, align 8
  br label %99

96:                                               ; preds = %82
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %98 = call i32 @clear_inuse_bit_at_offset(%struct.TYPE_30__* %97, i32 0)
  br label %99

99:                                               ; preds = %96, %88
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = call %struct.TYPE_30__* @unsorted_chunks(%struct.TYPE_29__* %100)
  store %struct.TYPE_30__* %101, %struct.TYPE_30__** %12, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  store %struct.TYPE_30__* %104, %struct.TYPE_30__** %13, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 1
  store %struct.TYPE_30__* %105, %struct.TYPE_30__** %107, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 2
  store %struct.TYPE_30__* %108, %struct.TYPE_30__** %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 2
  store %struct.TYPE_30__* %111, %struct.TYPE_30__** %113, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  store %struct.TYPE_30__* %114, %struct.TYPE_30__** %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @PREV_INUSE, align 8
  %120 = or i64 %118, %119
  %121 = call i32 @set_head(%struct.TYPE_30__* %117, i64 %120)
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @set_foot(%struct.TYPE_30__* %122, i64 %123)
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %127 = call i32 @check_free_chunk(%struct.TYPE_29__* %125, %struct.TYPE_30__* %126)
  br label %143

128:                                              ; preds = %76
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %6, align 8
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @PREV_INUSE, align 8
  %135 = or i64 %133, %134
  %136 = call i32 @set_head(%struct.TYPE_30__* %132, i64 %135)
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  store %struct.TYPE_30__* %137, %struct.TYPE_30__** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %142 = call i32 @check_chunk(%struct.TYPE_29__* %140, %struct.TYPE_30__* %141)
  br label %143

143:                                              ; preds = %128, %99
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* @FASTBIN_CONSOLIDATION_THRESHOLD, align 8
  %146 = icmp uge i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %149 = call i64 @have_fastchunks(%struct.TYPE_29__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %153 = call i32 @malloc_consolidate(%struct.TYPE_29__* %152)
  br label %154

154:                                              ; preds = %151, %147
  br label %155

155:                                              ; preds = %154, %143
  br label %156

156:                                              ; preds = %155, %44
  br label %157

157:                                              ; preds = %156, %29
  br label %158

158:                                              ; preds = %157, %2
  ret void
}

declare dso_local %struct.TYPE_30__* @mem2chunk(i32*) #1

declare dso_local i64 @chunksize(%struct.TYPE_30__*) #1

declare dso_local i32 @check_inuse_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @set_fastchunks(%struct.TYPE_29__*) #1

declare dso_local i64 @fastbin_index(i64) #1

declare dso_local i32 @chunk_is_mmapped(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @chunk_at_offset(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prev_inuse(%struct.TYPE_30__*) #1

declare dso_local i32 @unlink(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @inuse_bit_at_offset(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @clear_inuse_bit_at_offset(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_30__* @unsorted_chunks(%struct.TYPE_29__*) #1

declare dso_local i32 @set_head(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @set_foot(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @check_free_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @check_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i64 @have_fastchunks(%struct.TYPE_29__*) #1

declare dso_local i32 @malloc_consolidate(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
