; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_split_interior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_split_interior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extent_split_interior_cant_alloc = common dso_local global i32 0, align 4
@NSIZES = common dso_local global i32 0, align 4
@extent_split_interior_error = common dso_local global i32 0, align 4
@extents_rtree = common dso_local global i32 0, align 4
@PAGE = common dso_local global i64 0, align 8
@extent_split_interior_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32*, i32**, i32**, i32**, i32**, i32**, i8*, i64, i64, i64, i32, i32, i32)* @extent_split_interior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_split_interior(i32* %0, i32* %1, i32** %2, i32* %3, i32** %4, i32** %5, i32** %6, i32** %7, i32** %8, i8* %9, i64 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i32* %0, i32** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32** %2, i32*** %20, align 8
  store i32* %3, i32** %21, align 8
  store i32** %4, i32*** %22, align 8
  store i32** %5, i32*** %23, align 8
  store i32** %6, i32*** %24, align 8
  store i32** %7, i32*** %25, align 8
  store i32** %8, i32*** %26, align 8
  store i8* %9, i8** %27, align 8
  store i64 %10, i64* %28, align 8
  store i64 %11, i64* %29, align 8
  store i64 %12, i64* %30, align 8
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  %37 = load i64, i64* %28, align 8
  %38 = load i64, i64* %29, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %34, align 8
  %40 = load i32**, i32*** %22, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @extent_base_get(i32* %41)
  %43 = load i64, i64* %30, align 8
  %44 = call i32 @PAGE_CEILING(i64 %43)
  %45 = call i64 @ALIGNMENT_CEILING(i64 %42, i32 %44)
  %46 = load i32**, i32*** %22, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @extent_base_get(i32* %47)
  %49 = sub i64 %45, %48
  store i64 %49, i64* %35, align 8
  %50 = load i8*, i8** %27, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %16
  %53 = load i64, i64* %35, align 8
  %54 = icmp eq i64 %53, 0
  br label %55

55:                                               ; preds = %52, %16
  %56 = phi i1 [ true, %16 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32**, i32*** %22, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @extent_size_get(i32* %60)
  %62 = load i64, i64* %35, align 8
  %63 = load i64, i64* %34, align 8
  %64 = add i64 %62, %63
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @extent_split_interior_cant_alloc, align 4
  store i32 %67, i32* %17, align 4
  br label %188

68:                                               ; preds = %55
  %69 = load i32**, i32*** %22, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @extent_size_get(i32* %70)
  %72 = load i64, i64* %35, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* %34, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %36, align 8
  %76 = load i32**, i32*** %23, align 8
  store i32* null, i32** %76, align 8
  %77 = load i32**, i32*** %24, align 8
  store i32* null, i32** %77, align 8
  %78 = load i32**, i32*** %25, align 8
  store i32* null, i32** %78, align 8
  %79 = load i32**, i32*** %26, align 8
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* %35, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %68
  %83 = load i32**, i32*** %22, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = load i32**, i32*** %23, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = load i32*, i32** %19, align 8
  %88 = load i32**, i32*** %20, align 8
  %89 = load i32**, i32*** %23, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %35, align 8
  %92 = load i32, i32* @NSIZES, align 4
  %93 = load i64, i64* %34, align 8
  %94 = load i64, i64* %36, align 8
  %95 = add i64 %93, %94
  %96 = load i32, i32* %32, align 4
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* %33, align 4
  %99 = call i32* @extent_split_impl(i32* %86, i32* %87, i32** %88, i32* %90, i64 %91, i32 %92, i32 0, i64 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32**, i32*** %22, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32**, i32*** %22, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %82
  %105 = load i32**, i32*** %23, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %25, align 8
  store i32* %106, i32** %107, align 8
  %108 = load i32**, i32*** %23, align 8
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* @extent_split_interior_error, align 4
  store i32 %109, i32* %17, align 4
  br label %188

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110, %68
  %112 = load i64, i64* %36, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %111
  %115 = load i32*, i32** %18, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = load i32**, i32*** %20, align 8
  %118 = load i32**, i32*** %22, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %34, align 8
  %121 = load i32, i32* %32, align 4
  %122 = load i32, i32* %31, align 4
  %123 = load i64, i64* %36, align 8
  %124 = load i32, i32* @NSIZES, align 4
  %125 = load i32, i32* %33, align 4
  %126 = call i32* @extent_split_impl(i32* %115, i32* %116, i32** %117, i32* %119, i64 %120, i32 %121, i32 %122, i64 %123, i32 %124, i32 0, i32 %125)
  %127 = load i32**, i32*** %24, align 8
  store i32* %126, i32** %127, align 8
  %128 = load i32**, i32*** %24, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %114
  %132 = load i32**, i32*** %22, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32**, i32*** %25, align 8
  store i32* %133, i32** %134, align 8
  %135 = load i32**, i32*** %23, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32**, i32*** %26, align 8
  store i32* %136, i32** %137, align 8
  %138 = load i32**, i32*** %23, align 8
  store i32* null, i32** %138, align 8
  %139 = load i32**, i32*** %22, align 8
  store i32* null, i32** %139, align 8
  %140 = load i32, i32* @extent_split_interior_error, align 4
  store i32 %140, i32* %17, align 4
  br label %188

141:                                              ; preds = %114
  br label %142

142:                                              ; preds = %141, %111
  %143 = load i64, i64* %35, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %186

145:                                              ; preds = %142
  %146 = load i64, i64* %36, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = load i32**, i32*** %22, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %32, align 4
  %152 = call i32 @extent_szind_set(i32* %150, i32 %151)
  %153 = load i32, i32* %32, align 4
  %154 = load i32, i32* @NSIZES, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %185

156:                                              ; preds = %148
  %157 = load i32*, i32** %18, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = load i32**, i32*** %22, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @extent_addr_get(i32* %160)
  %162 = load i32, i32* %32, align 4
  %163 = load i32, i32* %31, align 4
  %164 = call i32 @rtree_szind_slab_update(i32* %157, i32* @extents_rtree, i32* %158, i64 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %31, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %156
  %168 = load i32**, i32*** %22, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @extent_size_get(i32* %169)
  %171 = load i64, i64* @PAGE, align 8
  %172 = icmp ugt i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load i32*, i32** %18, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = load i32**, i32*** %22, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = call i64 @extent_past_get(i32* %177)
  %179 = load i64, i64* @PAGE, align 8
  %180 = sub i64 %178, %179
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %31, align 4
  %183 = call i32 @rtree_szind_slab_update(i32* %174, i32* @extents_rtree, i32* %175, i64 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %173, %167, %156
  br label %185

185:                                              ; preds = %184, %148
  br label %186

186:                                              ; preds = %185, %145, %142
  %187 = load i32, i32* @extent_split_interior_ok, align 4
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %186, %131, %104, %66
  %189 = load i32, i32* %17, align 4
  ret i32 %189
}

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32 @PAGE_CEILING(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32* @extent_split_impl(i32*, i32*, i32**, i32*, i64, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @rtree_szind_slab_update(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i64 @extent_addr_get(i32*) #1

declare dso_local i64 @extent_past_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
