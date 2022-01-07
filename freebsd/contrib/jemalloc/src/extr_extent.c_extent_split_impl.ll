; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_split_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_split_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_6__**, i32*, i64, i32, i32, i64, i32, i32, i32)* @extent_split_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_split_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i64 %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = call i64 @extent_size_get(i32* %33)
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %20, align 8
  %37 = add i64 %35, %36
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @tsdn_witness_tsdp_get(i32* %41)
  %43 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %44 = load i32, i32* %23, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @witness_assert_depth_to_rank(i32 %42, i32 %43, i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %51 = call i32 @extent_hooks_assure_initialized(i32* %49, %struct.TYPE_6__** %50)
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)** %54, align 8
  %56 = icmp eq i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %11
  store i32* null, i32** %12, align 8
  br label %203

58:                                               ; preds = %11
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @extent_alloc(i32* %59, i32* %60)
  store i32* %61, i32** %24, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %202

65:                                               ; preds = %58
  %66 = load i32*, i32** %24, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i64 @extent_base_get(i32* %68)
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %69, %70
  %72 = inttoptr i64 %71 to i8*
  %73 = load i64, i64* %20, align 8
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @extent_sn_get(i32* %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @extent_state_get(i32* %78)
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @extent_zeroed_get(i32* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @extent_committed_get(i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @extent_dumpable_get(i32* %84)
  %86 = call i32 @extent_init(i32* %66, i32* %67, i8* %72, i64 %73, i32 %74, i32 %75, i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32* @tsdn_rtree_ctx(i32* %87, i32* %25)
  store i32* %88, i32** %26, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = call i8* @extent_addr_get(i32* %90)
  %92 = load i64, i64* %17, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @extent_sn_get(i32* %95)
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @extent_state_get(i32* %97)
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @extent_zeroed_get(i32* %99)
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @extent_committed_get(i32* %101)
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @extent_dumpable_get(i32* %103)
  %105 = call i32 @extent_init(i32* %29, i32* %89, i8* %91, i64 %92, i32 %93, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %104)
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %26, align 8
  %108 = call i32 @extent_rtree_leaf_elms_lookup(i32* %106, i32* %107, i32* %29, i32 0, i32 1, i32** %27, i32** %28)
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %26, align 8
  %111 = load i32*, i32** %24, align 8
  %112 = call i32 @extent_rtree_leaf_elms_lookup(i32* %109, i32* %110, i32* %111, i32 0, i32 1, i32** %30, i32** %31)
  %113 = load i32*, i32** %27, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %65
  %116 = load i32*, i32** %28, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32*, i32** %30, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32*, i32** %31, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118, %115, %65
  br label %197

125:                                              ; preds = %121
  %126 = load i32*, i32** %13, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = load i32*, i32** %24, align 8
  %129 = call i32 @extent_lock2(i32* %126, i32* %127, i32* %128)
  %130 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = icmp ne %struct.TYPE_6__* %131, @extent_hooks_default
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32*, i32** %13, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @extent_hook_pre_reentrancy(i32* %134, i32* %135)
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)** %140, align 8
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = call i64 @extent_base_get(i32* %144)
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* %20, align 8
  %148 = add i64 %146, %147
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %20, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @extent_committed_get(i32* %151)
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @arena_ind_get(i32* %153)
  %155 = call i32 %141(%struct.TYPE_6__* %143, i64 %145, i64 %148, i64 %149, i64 %150, i32 %152, i32 %154)
  store i32 %155, i32* %32, align 4
  %156 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = icmp ne %struct.TYPE_6__* %157, @extent_hooks_default
  br i1 %158, label %159, label %162

159:                                              ; preds = %137
  %160 = load i32*, i32** %13, align 8
  %161 = call i32 @extent_hook_post_reentrancy(i32* %160)
  br label %162

162:                                              ; preds = %159, %137
  %163 = load i32, i32* %32, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %192

166:                                              ; preds = %162
  %167 = load i32*, i32** %16, align 8
  %168 = load i64, i64* %17, align 8
  %169 = call i32 @extent_size_set(i32* %167, i64 %168)
  %170 = load i32*, i32** %16, align 8
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @extent_szind_set(i32* %170, i32 %171)
  %173 = load i32*, i32** %13, align 8
  %174 = load i32*, i32** %27, align 8
  %175 = load i32*, i32** %28, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @extent_rtree_write_acquired(i32* %173, i32* %174, i32* %175, i32* %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %30, align 8
  %182 = load i32*, i32** %31, align 8
  %183 = load i32*, i32** %24, align 8
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %22, align 4
  %186 = call i32 @extent_rtree_write_acquired(i32* %180, i32* %181, i32* %182, i32* %183, i32 %184, i32 %185)
  %187 = load i32*, i32** %13, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = load i32*, i32** %24, align 8
  %190 = call i32 @extent_unlock2(i32* %187, i32* %188, i32* %189)
  %191 = load i32*, i32** %24, align 8
  store i32* %191, i32** %12, align 8
  br label %203

192:                                              ; preds = %165
  %193 = load i32*, i32** %13, align 8
  %194 = load i32*, i32** %16, align 8
  %195 = load i32*, i32** %24, align 8
  %196 = call i32 @extent_unlock2(i32* %193, i32* %194, i32* %195)
  br label %197

197:                                              ; preds = %192, %124
  %198 = load i32*, i32** %13, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = load i32*, i32** %24, align 8
  %201 = call i32 @extent_dalloc(i32* %198, i32* %199, i32* %200)
  br label %202

202:                                              ; preds = %197, %64
  store i32* null, i32** %12, align 8
  br label %203

203:                                              ; preds = %202, %166, %57
  %204 = load i32*, i32** %12, align 8
  ret i32* %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32* @extent_alloc(i32*, i32*) #1

declare dso_local i32 @extent_init(i32*, i32*, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32 @extent_sn_get(i32*) #1

declare dso_local i32 @extent_state_get(i32*) #1

declare dso_local i32 @extent_zeroed_get(i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @extent_dumpable_get(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i8* @extent_addr_get(i32*) #1

declare dso_local i32 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_lock2(i32*, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_size_set(i32*, i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_unlock2(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
