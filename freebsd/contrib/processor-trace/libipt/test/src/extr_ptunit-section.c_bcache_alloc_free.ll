; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_bcache_alloc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_bcache_alloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { %struct.pt_block_cache*, i32 }
%struct.pt_block_cache = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.bcache_alloc_free.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @bcache_alloc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcache_alloc_free(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca %struct.pt_block_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %7 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.bcache_alloc_free.bytes to i8*), i64 16, i1 false)
  %8 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %10 = call i32 @sfix_write(%struct.section_fixture* %8, i32* %9)
  %11 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %11, i32 0, i32 0
  %13 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pt_mk_section(%struct.pt_block_cache** %12, i32 %15, i32 1, i32 3)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ptu_int_eq(i32 %17, i32 0)
  %19 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %19, i32 0, i32 0
  %21 = load %struct.pt_block_cache*, %struct.pt_block_cache** %20, align 8
  %22 = call i32 @ptu_ptr(%struct.pt_block_cache* %21)
  %23 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %23, i32 0, i32 0
  %25 = load %struct.pt_block_cache*, %struct.pt_block_cache** %24, align 8
  %26 = call i32 @pt_section_map(%struct.pt_block_cache* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  %29 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %29, i32 0, i32 0
  %31 = load %struct.pt_block_cache*, %struct.pt_block_cache** %30, align 8
  %32 = call i32 @pt_section_alloc_bcache(%struct.pt_block_cache* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ptu_int_eq(i32 %33, i32 0)
  %35 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %35, i32 0, i32 0
  %37 = load %struct.pt_block_cache*, %struct.pt_block_cache** %36, align 8
  %38 = call %struct.pt_block_cache* @pt_section_bcache(%struct.pt_block_cache* %37)
  store %struct.pt_block_cache* %38, %struct.pt_block_cache** %5, align 8
  %39 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %40 = call i32 @ptu_ptr(%struct.pt_block_cache* %39)
  %41 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %42 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %44, i32 0, i32 0
  %46 = load %struct.pt_block_cache*, %struct.pt_block_cache** %45, align 8
  %47 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_uint_eq(i32 %43, i32 %48)
  %50 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %51 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %50, i32 0, i32 0
  %52 = load %struct.pt_block_cache*, %struct.pt_block_cache** %51, align 8
  %53 = call i32 @pt_section_unmap(%struct.pt_block_cache* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 0)
  %56 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %56, i32 0, i32 0
  %58 = load %struct.pt_block_cache*, %struct.pt_block_cache** %57, align 8
  %59 = call %struct.pt_block_cache* @pt_section_bcache(%struct.pt_block_cache* %58)
  store %struct.pt_block_cache* %59, %struct.pt_block_cache** %5, align 8
  %60 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %61 = call i32 @ptu_null(%struct.pt_block_cache* %60)
  %62 = call i32 (...) @ptu_passed()
  %63 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(%struct.pt_block_cache**, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(%struct.pt_block_cache*) #2

declare dso_local i32 @pt_section_map(%struct.pt_block_cache*) #2

declare dso_local i32 @pt_section_alloc_bcache(%struct.pt_block_cache*) #2

declare dso_local %struct.pt_block_cache* @pt_section_bcache(%struct.pt_block_cache*) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_section_unmap(%struct.pt_block_cache*) #2

declare dso_local i32 @ptu_null(%struct.pt_block_cache*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
