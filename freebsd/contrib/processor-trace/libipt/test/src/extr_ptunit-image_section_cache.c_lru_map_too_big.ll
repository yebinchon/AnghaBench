; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_too_big.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_too_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_6__, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map_too_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map_too_big(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %8, i64 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i64 %13, i64* %16, align 8
  %17 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ptu_uint_eq(i32 %20, i64 0)
  %22 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ptu_null(i32 %25)
  %27 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %27, i32 0, i32 0
  %29 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @pt_iscache_add(%struct.TYPE_6__* %28, %struct.TYPE_5__* %33, i32 40960)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ptu_int_gt(i32 %35, i32 0)
  %37 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @pt_section_map(%struct.TYPE_5__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ptu_int_eq(i32 %43, i32 0)
  %45 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @pt_section_unmap(%struct.TYPE_5__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ptu_int_eq(i32 %51, i32 0)
  %53 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %54 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ptu_null(i32 %56)
  %58 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %59 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ptu_uint_eq(i32 %61, i64 0)
  %63 = call i32 (...) @ptu_passed()
  %64 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  ret i32 %66
}

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_null(i32) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_6__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_5__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_5__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
