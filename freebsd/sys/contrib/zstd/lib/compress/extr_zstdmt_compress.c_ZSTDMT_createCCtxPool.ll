; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_createCCtxPool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_createCCtxPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cctxPool created, with %u workers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32)* @ZSTDMT_createCCtxPool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ZSTDMT_createCCtxPool(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = add i64 24, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ZSTD_calloc(i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = call i64 @ZSTD_pthread_mutex_init(i32* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ZSTD_free(%struct.TYPE_5__* %29, i32 %30)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ZSTD_createCCtx_advanced(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = call i32 @ZSTDMT_freeCCtxPool(%struct.TYPE_5__* %54)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

56:                                               ; preds = %32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %3, align 8
  br label %60

60:                                               ; preds = %56, %53, %28, %22
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i64 @ZSTD_calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @ZSTD_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ZSTD_createCCtx_advanced(i32) #1

declare dso_local i32 @ZSTDMT_freeCCtxPool(%struct.TYPE_5__*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
