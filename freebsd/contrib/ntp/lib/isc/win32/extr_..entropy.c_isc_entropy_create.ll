; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32*, i64, i32*, i32, i32 }

@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ENTROPY_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_entropy_create(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %13 = icmp ne %struct.TYPE_5__** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_5__* @isc_mem_get(i32* %22, i32 64)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %27, i64* %3, align 8
  br label %71

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 9
  %31 = call i64 @isc_mutex_init(i32* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ISC_R_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %66

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ISC_LIST_INIT(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = call i32 @isc_mem_attach(i32* %47, i32** %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @ENTROPY_MAGIC, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = call i32 @isc_entropypool_init(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %64, align 8
  %65 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %65, i64* %3, align 8
  br label %71

66:                                               ; preds = %35
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = call i32 @isc_mem_put(i32* %67, %struct.TYPE_5__* %68, i32 64)
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %66, %36, %26
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_5__* @isc_mem_get(i32*, i32) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i32 @isc_mem_attach(i32*, i32**) #1

declare dso_local i32 @isc_entropypool_init(i32*) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
