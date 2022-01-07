; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_deflate_buckets.c_serf_bucket_deflate_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_deflate_buckets.c_serf_bucket_deflate_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32* }

@APR_SUCCESS = common dso_local global i32 0, align 4
@STATE_READING_HEADER = common dso_local global i32 0, align 4
@STATE_INIT = common dso_local global i32 0, align 4
@DEFLATE_MAGIC_SIZE = common dso_local global i32 0, align 4
@DEFLATE_WINDOW_SIZE = common dso_local global i32 0, align 4
@DEFLATE_MEMLEVEL = common dso_local global i32 0, align 4
@DEFLATE_BUFFER_SIZE = common dso_local global i32 0, align 4
@serf_bucket_type_deflate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serf_bucket_deflate_create(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_4__* @serf_bucket_mem_alloc(i32* %9, i32 56)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 11
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @APR_SUCCESS, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @serf_bucket_aggregate_create(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %3
  %33 = load i32, i32* @STATE_READING_HEADER, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  br label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @STATE_INIT, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  br label %41

40:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %59

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @DEFLATE_MAGIC_SIZE, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @DEFLATE_WINDOW_SIZE, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DEFLATE_MEMLEVEL, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @DEFLATE_BUFFER_SIZE, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = call i32* @serf_bucket_create(i32* @serf_bucket_type_deflate, i32* %56, %struct.TYPE_4__* %57)
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %41, %40
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local %struct.TYPE_4__* @serf_bucket_mem_alloc(i32*, i32) #1

declare dso_local i32 @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @serf_bucket_create(i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
