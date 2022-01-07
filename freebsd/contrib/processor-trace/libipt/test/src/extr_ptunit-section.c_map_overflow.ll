; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_map_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_map_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ptunit_result = type { i32 }

@__const.map_overflow.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@UINT16_MAX = common dso_local global i64 0, align 8
@pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @map_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_overflow(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %6 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @__const.map_overflow.bytes to i8*), i64 16, i1 false)
  %7 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %9 = call i32 @sfix_write(%struct.section_fixture* %7, i32* %8)
  %10 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %10, i32 0, i32 0
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pt_mk_section(%struct.TYPE_4__** %11, i32 %14, i32 1, i32 3)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 0)
  %18 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @ptu_ptr(%struct.TYPE_4__* %20)
  %22 = load i64, i64* @UINT16_MAX, align 8
  %23 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @pt_section_map(%struct.TYPE_4__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @pte_overflow, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @ptu_int_eq(i32 %31, i32 %33)
  %35 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = call i32 (...) @ptu_passed()
  %40 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(%struct.TYPE_4__**, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(%struct.TYPE_4__*) #2

declare dso_local i32 @pt_section_map(%struct.TYPE_4__*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
