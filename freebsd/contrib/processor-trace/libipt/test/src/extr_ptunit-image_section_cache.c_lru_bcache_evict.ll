; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_bcache_evict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_bcache_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_9__**, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_bcache_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_bcache_evict(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %8, i64 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 4, %12
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %16, i64 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %13, %20
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ptu_uint_eq(i32 %29, i32 0)
  %31 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @ptu_null(%struct.TYPE_10__* %34)
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 1
  %38 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @pt_iscache_add(%struct.TYPE_11__* %37, %struct.TYPE_9__* %42, i32 40960)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ptu_int_gt(i32 %44, i32 0)
  %46 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %46, i32 0, i32 1
  %48 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %49 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @pt_iscache_add(%struct.TYPE_11__* %47, %struct.TYPE_9__* %52, i32 40960)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ptu_int_gt(i32 %54, i32 0)
  %56 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @pt_section_map(%struct.TYPE_9__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ptu_int_eq(i32 %62, i32 0)
  %64 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %65 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i32 @pt_section_unmap(%struct.TYPE_9__* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @ptu_int_eq(i32 %70, i32 0)
  %72 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %73 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %74, i64 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @pt_section_map(%struct.TYPE_9__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ptu_int_eq(i32 %78, i32 0)
  %80 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %81 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i32 @pt_section_unmap(%struct.TYPE_9__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ptu_int_eq(i32 %86, i32 0)
  %88 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %89 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %90, i64 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = call i32 @pt_section_request_bcache(%struct.TYPE_9__* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ptu_int_eq(i32 %94, i32 0)
  %96 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %97 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = call i32 @ptu_ptr(%struct.TYPE_10__* %99)
  %101 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %102 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %108 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @ptu_ptr_eq(i32 %106, %struct.TYPE_9__* %111)
  %113 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %114 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @ptu_null(%struct.TYPE_10__* %118)
  %120 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %121 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %125 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 4, %130
  %132 = call i32 @ptu_uint_eq(i32 %123, i32 %131)
  %133 = call i32 (...) @ptu_passed()
  %134 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  ret i32 %136
}

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_null(%struct.TYPE_10__*) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_11__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_9__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_9__*) #1

declare dso_local i32 @pt_section_request_bcache(%struct.TYPE_9__*) #1

declare dso_local i32 @ptu_ptr(%struct.TYPE_10__*) #1

declare dso_local i32 @ptu_ptr_eq(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
