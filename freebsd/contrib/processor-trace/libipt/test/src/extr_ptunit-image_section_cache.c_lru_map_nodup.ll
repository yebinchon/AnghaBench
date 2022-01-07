; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_nodup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_nodup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_8__**, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map_nodup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map_nodup(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %8, i64 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 2, %12
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_uint_eq(i32 %20, i64 0)
  %22 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @ptu_null(%struct.TYPE_9__* %25)
  %27 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %27, i32 0, i32 1
  %29 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @pt_iscache_add(%struct.TYPE_10__* %28, %struct.TYPE_8__* %33, i32 40960)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ptu_int_gt(i32 %35, i32 0)
  %37 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @pt_section_map(%struct.TYPE_8__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ptu_int_eq(i32 %43, i32 0)
  %45 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @pt_section_unmap(%struct.TYPE_8__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ptu_int_eq(i32 %51, i32 0)
  %53 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %54 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @pt_section_map(%struct.TYPE_8__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ptu_int_eq(i32 %59, i32 0)
  %61 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %62 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %63, i64 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @pt_section_unmap(%struct.TYPE_8__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ptu_int_eq(i32 %67, i32 0)
  %69 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %70 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = call i32 @ptu_ptr(%struct.TYPE_9__* %72)
  %74 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %75 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %81 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %82, i64 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i32 @ptu_ptr_eq(i32 %79, %struct.TYPE_8__* %84)
  %86 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %87 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call i32 @ptu_null(%struct.TYPE_9__* %91)
  %93 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %94 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %98 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @ptu_uint_eq(i32 %96, i64 %104)
  %106 = call i32 (...) @ptu_passed()
  %107 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  ret i32 %109
}

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_null(%struct.TYPE_9__*) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_10__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_8__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_8__*) #1

declare dso_local i32 @ptu_ptr(%struct.TYPE_9__*) #1

declare dso_local i32 @ptu_ptr_eq(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
