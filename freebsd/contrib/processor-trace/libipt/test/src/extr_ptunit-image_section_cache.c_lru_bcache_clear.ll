; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_bcache_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_bcache_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_7__, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_bcache_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_bcache_clear(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %8, i64 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %12, %19
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i64 %20, i64* %23, align 8
  %24 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ptu_uint_eq(i32 %27, i64 0)
  %29 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_null(i32 %32)
  %34 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %34, i32 0, i32 0
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @pt_iscache_add(%struct.TYPE_7__* %35, %struct.TYPE_6__* %40, i32 40960)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_gt(i32 %42, i32 0)
  %44 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %44, i32 0, i32 0
  %46 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @pt_iscache_add(%struct.TYPE_7__* %45, %struct.TYPE_6__* %50, i32 40960)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_gt(i32 %52, i32 0)
  %54 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @pt_section_map(%struct.TYPE_6__* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 0)
  %62 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @pt_section_unmap(%struct.TYPE_6__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 0)
  %70 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %71 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @pt_section_map(%struct.TYPE_6__* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ptu_int_eq(i32 %76, i32 0)
  %78 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %80, i64 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @pt_section_unmap(%struct.TYPE_6__* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ptu_int_eq(i32 %84, i32 0)
  %86 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %87 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @pt_section_request_bcache(%struct.TYPE_6__* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ptu_int_eq(i32 %92, i32 0)
  %94 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %95 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ptu_null(i32 %97)
  %99 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %100 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ptu_uint_eq(i32 %102, i64 0)
  %104 = call i32 (...) @ptu_passed()
  %105 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  ret i32 %107
}

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_null(i32) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_6__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_6__*) #1

declare dso_local i32 @pt_section_request_bcache(%struct.TYPE_6__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
