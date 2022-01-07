; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_map_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_map_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.map_put.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @map_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_put(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %6 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @__const.map_put.bytes to i8*), i64 16, i1 false)
  %7 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %9 = call i32 @sfix_write(%struct.section_fixture* %7, i32* %8)
  %10 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %10, i32 0, i32 0
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pt_mk_section(i32* %11, i32 %14, i32 1, i32 3)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 0)
  %18 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_ptr(i32 %20)
  %22 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pt_section_map(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ptu_int_eq(i32 %26, i32 0)
  %28 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pt_section_put(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @pte_internal, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @ptu_int_eq(i32 %32, i32 %34)
  %36 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pt_section_unmap(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ptu_int_eq(i32 %40, i32 0)
  %42 = call i32 (...) @ptu_passed()
  %43 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local i32 @pt_section_put(i32) #2

declare dso_local i32 @pt_section_unmap(i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
