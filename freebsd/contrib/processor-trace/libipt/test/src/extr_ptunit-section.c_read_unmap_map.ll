; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_read_unmap_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_read_unmap_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.read_unmap_map.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@__const.read_unmap_map.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @read_unmap_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unmap_map(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %7 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.read_unmap_map.bytes to i8*), i64 16, i1 false)
  %8 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.read_unmap_map.buffer to i8*), i64 12, i1 false)
  %9 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %11 = call i32 @sfix_write(%struct.section_fixture* %9, i32* %10)
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 0
  %14 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pt_mk_section(i32* %13, i32 %16, i32 1, i32 3)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 0)
  %20 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ptu_ptr(i32 %22)
  %24 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pt_section_map(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ptu_int_eq(i32 %28, i32 0)
  %30 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %34 = call i32 @pt_section_read(i32 %32, i32* %33, i32 2, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ptu_int_eq(i32 %35, i32 2)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ptu_uint_eq(i32 %38, i32 %40)
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ptu_uint_eq(i32 %43, i32 %45)
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_uint_eq(i32 %48, i32 204)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %51 = call i32 @memset(i32* %50, i32 204, i32 12)
  %52 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pt_section_unmap(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ptu_int_eq(i32 %56, i32 0)
  %58 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %59 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %62 = call i32 @pt_section_read(i32 %60, i32* %61, i32 2, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @pte_nomap, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @ptu_int_eq(i32 %63, i32 %65)
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_uint_eq(i32 %68, i32 204)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ptu_uint_eq(i32 %71, i32 204)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ptu_uint_eq(i32 %74, i32 204)
  %76 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %77 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pt_section_map(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 0)
  %82 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %83 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %86 = call i32 @pt_section_read(i32 %84, i32* %85, i32 2, i32 0)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ptu_int_eq(i32 %87, i32 2)
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ptu_uint_eq(i32 %90, i32 %92)
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ptu_uint_eq(i32 %95, i32 %97)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ptu_uint_eq(i32 %100, i32 204)
  %102 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %103 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pt_section_unmap(i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ptu_int_eq(i32 %106, i32 0)
  %108 = call i32 (...) @ptu_passed()
  %109 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local i32 @pt_section_read(i32, i32*, i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @pt_section_unmap(i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
