; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcache_create_explicit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcache_create_explicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_nelms = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tcache_create_explicit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 4, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @PTR_CEILING(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @stack_nelms, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @CACHELINE, align 4
  %17 = call i64 @sz_sa2u(i64 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @tsd_tsdn(i32* %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @CACHELINE, align 4
  %22 = load i32, i32* @TSDN_NULL, align 4
  %23 = call i32 @arena_get(i32 %22, i32 0, i32 1)
  %24 = call i32* @ipallocztm(i32 %19, i64 %20, i32 %21, i32 1, i32* null, i32 1, i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %44

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %32, %33
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @tcache_init(i32* %29, i32* %30, i8* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @tsd_tsdn(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @arena_ichoose(i32* %40, i32* null)
  %42 = call i32 @tcache_arena_associate(i32 %38, i32* %39, i32 %41)
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %2, align 8
  br label %44

44:                                               ; preds = %28, %27
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i64 @PTR_CEILING(i64) #1

declare dso_local i64 @sz_sa2u(i64, i32) #1

declare dso_local i32* @ipallocztm(i32, i64, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i32 @tcache_init(i32*, i32*, i8*) #1

declare dso_local i32 @tcache_arena_associate(i32, i32*, i32) #1

declare dso_local i32 @arena_ichoose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
