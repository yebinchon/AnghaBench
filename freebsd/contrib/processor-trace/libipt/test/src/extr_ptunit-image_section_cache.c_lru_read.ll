; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_7__**, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 }
%struct.ptunit_result = type { i32 }

@__const.lru_read.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_read(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.lru_read.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %10, i64 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ptu_uint_eq(i32 %21, i64 0)
  %23 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @ptu_null(%struct.TYPE_8__* %26)
  %28 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %28, i32 0, i32 1
  %30 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @pt_iscache_add(%struct.TYPE_9__* %29, %struct.TYPE_7__* %34, i32 40960)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ptu_int_gt(i32 %36, i32 0)
  %38 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %38, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pt_iscache_read(%struct.TYPE_9__* %39, i32* %40, i64 2, i32 %41, i32 40968)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ptu_int_eq(i32 %43, i32 2)
  %45 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @ptu_ptr(%struct.TYPE_8__* %48)
  %50 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %51 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @ptu_ptr_eq(i32 %55, %struct.TYPE_7__* %60)
  %62 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @ptu_null(%struct.TYPE_8__* %67)
  %69 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %70 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %74 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ptu_uint_eq(i32 %72, i64 %79)
  %81 = call i32 (...) @ptu_passed()
  %82 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ptu_uint_eq(i32, i64) #2

declare dso_local i32 @ptu_null(%struct.TYPE_8__*) #2

declare dso_local i32 @pt_iscache_add(%struct.TYPE_9__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @ptu_int_gt(i32, i32) #2

declare dso_local i32 @pt_iscache_read(%struct.TYPE_9__*, i32*, i64, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(%struct.TYPE_8__*) #2

declare dso_local i32 @ptu_ptr_eq(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
