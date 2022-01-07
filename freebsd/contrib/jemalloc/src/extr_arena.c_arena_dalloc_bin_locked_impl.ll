; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_dalloc_bin_locked_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_dalloc_bin_locked_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, i32 }

@bin_infos = common dso_local global %struct.TYPE_18__* null, align 8
@config_fill = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_19__*, i32*, i8*, i32)* @arena_dalloc_bin_locked_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_dalloc_bin_locked_impl(i32* %0, %struct.TYPE_19__* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @extent_slab_data_get(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @extent_szind_get(i32* %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i64 %23
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %13, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bin_infos, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i64 %26
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %14, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %5
  %31 = load i64, i64* @config_fill, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* @opt_junk_free, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %40 = call i32 @arena_dalloc_junk_small(i8* %38, %struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %37, %33, %30, %5
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @arena_slab_reg_dalloc(i32* %42, i32* %43, i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @extent_nfree_get(i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %57 = call i32 @arena_dissociate_bin_slab(%struct.TYPE_19__* %54, i32* %55, %struct.TYPE_17__* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %62 = call i32 @arena_dalloc_bin_slab(i32* %58, %struct.TYPE_19__* %59, i32* %60, %struct.TYPE_17__* %61)
  br label %83

63:                                               ; preds = %41
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @arena_bin_slabs_full_remove(%struct.TYPE_19__* %73, %struct.TYPE_17__* %74, i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = call i32 @arena_bin_lower_slab(i32* %77, %struct.TYPE_19__* %78, i32* %79, %struct.TYPE_17__* %80)
  br label %82

82:                                               ; preds = %72, %66, %63
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i64, i64* @config_stats, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32* @extent_slab_data_get(i32*) #1

declare dso_local i64 @extent_szind_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arena_dalloc_junk_small(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @arena_slab_reg_dalloc(i32*, i32*, i8*) #1

declare dso_local i32 @extent_nfree_get(i32*) #1

declare dso_local i32 @arena_dissociate_bin_slab(%struct.TYPE_19__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @arena_dalloc_bin_slab(i32*, %struct.TYPE_19__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @arena_bin_slabs_full_remove(%struct.TYPE_19__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @arena_bin_lower_slab(i32*, %struct.TYPE_19__*, i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
