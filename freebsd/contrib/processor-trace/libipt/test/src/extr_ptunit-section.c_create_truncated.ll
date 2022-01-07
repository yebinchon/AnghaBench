; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_create_truncated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_create_truncated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.create_truncated.bytes = private unnamed_addr constant [5 x i32] [i32 204, i32 204, i32 204, i32 204, i32 204], align 16
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @create_truncated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_truncated(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %9 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @__const.create_truncated.bytes to i8*), i64 20, i1 false)
  %10 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %12 = call i32 @sfix_write(%struct.section_fixture* %10, i32* %11)
  %13 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %13, i32 0, i32 0
  %15 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UINT64_MAX, align 4
  %19 = call i32 @pt_mk_section(i32* %14, i32 %17, i32 1, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ptu_int_eq(i32 %20, i32 0)
  %22 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_ptr(i32 %24)
  %26 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @pt_section_filename(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ptu_str_eq(i8* %30, i32 %33)
  %35 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pt_section_offset(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ptu_uint_eq(i32 %39, i32 1)
  %41 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %42 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pt_section_size(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ptu_uint_eq(i32 %45, i32 19)
  %47 = call i32 (...) @ptu_passed()
  %48 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i8* @pt_section_filename(i32) #2

declare dso_local i32 @ptu_str_eq(i8*, i32) #2

declare dso_local i32 @pt_section_offset(i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_section_size(i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
