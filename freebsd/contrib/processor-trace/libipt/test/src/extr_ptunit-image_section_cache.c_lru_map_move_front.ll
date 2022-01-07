; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_move_front.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_move_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_8__**, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map_move_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map_move_front(%struct.iscache_fixture* %0) #0 {
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
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %12, %19
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ptu_uint_eq(i32 %27, i64 0)
  %29 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @ptu_null(%struct.TYPE_9__* %32)
  %34 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %34, i32 0, i32 1
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @pt_iscache_add(%struct.TYPE_10__* %35, %struct.TYPE_8__* %40, i32 40960)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_gt(i32 %42, i32 0)
  %44 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %44, i32 0, i32 1
  %46 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @pt_iscache_add(%struct.TYPE_10__* %45, %struct.TYPE_8__* %50, i32 40960)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_gt(i32 %52, i32 0)
  %54 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @pt_section_map(%struct.TYPE_8__* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 0)
  %62 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @pt_section_unmap(%struct.TYPE_8__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 0)
  %70 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %71 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @pt_section_map(%struct.TYPE_8__* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ptu_int_eq(i32 %76, i32 0)
  %78 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @pt_section_unmap(%struct.TYPE_8__* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ptu_int_eq(i32 %84, i32 0)
  %86 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %87 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @pt_section_map(%struct.TYPE_8__* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ptu_int_eq(i32 %92, i32 0)
  %94 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %95 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %96, i64 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @pt_section_unmap(%struct.TYPE_8__* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 0)
  %102 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %103 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 @ptu_ptr(%struct.TYPE_9__* %105)
  %107 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %108 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %114 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %115, i64 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = call i32 @ptu_ptr_eq(i32 %112, %struct.TYPE_8__* %117)
  %119 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %120 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i32 @ptu_ptr(%struct.TYPE_9__* %124)
  %126 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %127 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %135 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %136, i64 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = call i32 @ptu_ptr_eq(i32 %133, %struct.TYPE_8__* %138)
  %140 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %141 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 @ptu_null(%struct.TYPE_9__* %147)
  %149 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %150 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %154 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %155, i64 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %161 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %162, i64 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %159, %166
  %168 = call i32 @ptu_uint_eq(i32 %152, i64 %167)
  %169 = call i32 (...) @ptu_passed()
  %170 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  %171 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  ret i32 %172
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
