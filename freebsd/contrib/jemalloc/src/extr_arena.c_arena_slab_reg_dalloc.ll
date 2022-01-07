; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_slab_reg_dalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_slab_reg_dalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@bin_infos = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*)* @arena_slab_reg_dalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_slab_reg_dalloc(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @extent_szind_get(i32* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @arena_slab_regind(i32* %15, i64 %16, i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @extent_nfree_get(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @bitmap_get(i32 %29, i32* %31, i64 %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @bitmap_unset(i32 %37, i32* %39, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @extent_nfree_inc(i32* %42)
  ret void
}

declare dso_local i64 @extent_szind_get(i32*) #1

declare dso_local i64 @arena_slab_regind(i32*, i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i32 @bitmap_get(i32, i32*, i64) #1

declare dso_local i32 @bitmap_unset(i32, i32*, i64) #1

declare dso_local i32 @extent_nfree_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
