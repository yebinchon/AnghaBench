; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.create.bytes = private unnamed_addr constant [5 x i32] [i32 204, i32 204, i32 204, i32 204, i32 204], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %9 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @__const.create.bytes to i8*), i64 20, i1 false)
  %10 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %12 = call i32 @sfix_write(%struct.section_fixture* %10, i32* %11)
  %13 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %13, i32 0, i32 0
  %15 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pt_mk_section(i32* %14, i32 %17, i32 1, i32 3)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ptu_ptr(i32 %23)
  %25 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @pt_section_filename(i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_str_eq(i8* %29, i32 %32)
  %34 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_section_offset(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ptu_uint_eq(i32 %38, i32 1)
  %40 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %41 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pt_section_size(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ptu_uint_eq(i32 %44, i32 3)
  %46 = call i32 (...) @ptu_passed()
  %47 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
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
