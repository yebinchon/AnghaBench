; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_init_no_bcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_init_no_bcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_block_cache = type { i32 }

@__const.init_no_bcache.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @init_no_bcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_no_bcache(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca %struct.pt_block_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %7 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.init_no_bcache.bytes to i8*), i64 16, i1 false)
  %8 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %10 = call i32 @sfix_write(%struct.section_fixture* %8, i32* %9)
  %11 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %11, i32 0, i32 0
  %13 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pt_mk_section(i32* %12, i32 %15, i32 1, i32 3)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ptu_int_eq(i32 %17, i32 0)
  %19 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ptu_ptr(i32 %21)
  %23 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pt_section_map(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  %29 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.pt_block_cache* @pt_section_bcache(i32 %31)
  store %struct.pt_block_cache* %32, %struct.pt_block_cache** %5, align 8
  %33 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %34 = call i32 @ptu_null(%struct.pt_block_cache* %33)
  %35 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pt_section_unmap(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ptu_int_eq(i32 %39, i32 0)
  %41 = call i32 (...) @ptu_passed()
  %42 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local %struct.pt_block_cache* @pt_section_bcache(i32) #2

declare dso_local i32 @ptu_null(%struct.pt_block_cache*) #2

declare dso_local i32 @pt_section_unmap(i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
