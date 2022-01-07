; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcache_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tcache.c_tcache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@tcache_bin_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @tcache_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcache_destroy(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @tcache_flush_cache(i32* %8, i8* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @tsd_tsdn(i32* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @tcache_arena_dissociate(i32 %12, i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_3__* @tcache_small_bin_get(i8* %18, i32 0)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %25, 8
  %27 = sub i64 %21, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @tsd_tsdn(i32* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @idalloctm(i32 %30, i8* %31, i32* null, i32* null, i32 1, i32 1)
  br label %38

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @tsd_tsdn(i32* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @idalloctm(i32 %35, i8* %36, i32* null, i32* null, i32 1, i32 1)
  br label %38

38:                                               ; preds = %33, %17
  ret void
}

declare dso_local i32 @tcache_flush_cache(i32*, i8*) #1

declare dso_local i32 @tcache_arena_dissociate(i32, i8*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local %struct.TYPE_3__* @tcache_small_bin_get(i8*, i32) #1

declare dso_local i32 @idalloctm(i32, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
