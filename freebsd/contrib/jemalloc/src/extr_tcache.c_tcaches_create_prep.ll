; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcaches_create_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcaches_create_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcaches_mtx = common dso_local global i32 0, align 4
@tcaches = common dso_local global i32* null, align 8
@MALLOCX_TCACHE_MAX = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@tcaches_avail = common dso_local global i32* null, align 8
@tcaches_past = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tcaches_create_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcaches_create_prep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @tsd_tsdn(i32* %4)
  %6 = call i32 @malloc_mutex_lock(i32 %5, i32* @tcaches_mtx)
  %7 = load i32*, i32** @tcaches, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @tsd_tsdn(i32* %10)
  %12 = call i32 (...) @b0get()
  %13 = load i32, i32* @MALLOCX_TCACHE_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @CACHELINE, align 4
  %19 = call i32* @base_alloc(i32 %11, i32 %12, i32 %17, i32 %18)
  store i32* %19, i32** @tcaches, align 8
  %20 = load i32*, i32** @tcaches, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %33

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32*, i32** @tcaches_avail, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @tcaches_past, align 4
  %29 = load i32, i32* @MALLOCX_TCACHE_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %22
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @tsd_tsdn(i32* %34)
  %36 = call i32 @malloc_mutex_unlock(i32 %35, i32* @tcaches_mtx)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @base_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @b0get(...) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
