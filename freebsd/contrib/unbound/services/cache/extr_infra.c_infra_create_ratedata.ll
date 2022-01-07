; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_create_ratedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_create_ratedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.rate_key = type { i64, i32*, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { %struct.rate_key*, %struct.rate_key*, i32, i32 }
%struct.rate_data = type { i64, i32*, %struct.TYPE_2__, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.infra_cache*, i32*, i64, i32)* @infra_create_ratedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infra_create_ratedata(%struct.infra_cache* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.infra_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rate_key*, align 8
  %11 = alloca %struct.rate_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @dname_query_hash(i32* %12, i32 171)
  store i32 %13, i32* %9, align 4
  %14 = call i64 @calloc(i32 1, i32 56)
  %15 = inttoptr i64 %14 to %struct.rate_key*
  store %struct.rate_key* %15, %struct.rate_key** %10, align 8
  %16 = call i64 @calloc(i32 1, i32 56)
  %17 = inttoptr i64 %16 to %struct.rate_data*
  store %struct.rate_data* %17, %struct.rate_data** %11, align 8
  %18 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %19 = icmp ne %struct.rate_key* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %22 = icmp ne %struct.rate_data* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %25 = call i32 @free(%struct.rate_key* %24)
  %26 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %27 = bitcast %struct.rate_data* %26 to %struct.rate_key*
  %28 = call i32 @free(%struct.rate_key* %27)
  br label %84

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %32 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memdup(i32* %33, i64 %34)
  %36 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %37 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %39 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  %43 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %44 = call i32 @free(%struct.rate_key* %43)
  %45 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %46 = bitcast %struct.rate_data* %45 to %struct.rate_key*
  %47 = call i32 @free(%struct.rate_key* %46)
  br label %84

48:                                               ; preds = %29
  %49 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %50 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = call i32 @lock_rw_init(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %55 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %58 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %59 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store %struct.rate_key* %57, %struct.rate_key** %60, align 8
  %61 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %62 = bitcast %struct.rate_data* %61 to %struct.rate_key*
  %63 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %64 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.rate_key* %62, %struct.rate_key** %65, align 8
  %66 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %67 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %72 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.infra_cache*, %struct.infra_cache** %5, align 8
  %76 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.rate_key*, %struct.rate_key** %10, align 8
  %80 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %79, i32 0, i32 2
  %81 = load %struct.rate_data*, %struct.rate_data** %11, align 8
  %82 = bitcast %struct.rate_data* %81 to %struct.rate_key*
  %83 = call i32 @slabhash_insert(i32 %77, i32 %78, %struct.TYPE_2__* %80, %struct.rate_key* %82, i32* null)
  br label %84

84:                                               ; preds = %48, %42, %23
  ret void
}

declare dso_local i32 @dname_query_hash(i32*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.rate_key*) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.TYPE_2__*, %struct.rate_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
