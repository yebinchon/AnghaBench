; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_createCCtx_advanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_createCCtx_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zcss_init = common dso_local global i64 0, align 8
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ZSTD_createCCtx_advanced(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = load i64, i64* @zcss_init, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ZSTD_STATIC_ASSERT(i32 %8)
  %10 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %11 = icmp eq i64 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @ZSTD_STATIC_ASSERT(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = xor i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %41

27:                                               ; preds = %1
  %28 = bitcast %struct.TYPE_5__* %3 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i64 @ZSTD_malloc(i32 4, i64 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32* null, i32** %2, align 8
  br label %41

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast %struct.TYPE_5__* %3 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @ZSTD_initCCtx(i32* %36, i64 %38)
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %35, %34, %26
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

declare dso_local i64 @ZSTD_malloc(i32, i64) #1

declare dso_local i32 @ZSTD_initCCtx(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
