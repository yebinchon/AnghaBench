; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_alloc_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_alloc_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32**, i32*, i32* }

@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, %struct.TYPE_4__**)* @alloc_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_pool(i32* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_4__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i8* @isc_mem_get(i32* %14, i32 32)
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %20, i32* %6, align 4
  br label %71

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i8* @isc_mem_get(i32* %34, i32 %38)
  %40 = bitcast i8* %39 to i32**
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32** %40, i32*** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = icmp eq i32** %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = call i32 @isc_mem_put(i32* %48, %struct.TYPE_4__* %49, i32 32)
  %51 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %51, i32* %6, align 4
  br label %71

52:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %69, align 8
  %70 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %47, %19
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i8* @isc_mem_get(i32*, i32) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
