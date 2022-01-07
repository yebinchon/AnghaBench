; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_detach_bad_iscache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_detach_bad_iscache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_image_section_cache = type { i32 }

@__const.detach_bad_iscache.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @detach_bad_iscache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_bad_iscache(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca %struct.pt_image_section_cache, align 4
  %5 = alloca %struct.pt_image_section_cache, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %8 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i32]* @__const.detach_bad_iscache.bytes to i8*), i64 16, i1 false)
  %9 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %11 = call i32 @sfix_write(%struct.section_fixture* %9, i32* %10)
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 0
  %14 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pt_mk_section(i32* %13, i32 %16, i32 1, i32 3)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 0)
  %20 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ptu_ptr(i32 %22)
  %24 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pt_section_attach(i32 %26, %struct.pt_image_section_cache* %4)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ptu_int_eq(i32 %28, i32 0)
  %30 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pt_section_detach(i32 %32, %struct.pt_image_section_cache* %5)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @ptu_int_eq(i32 %34, i32 %36)
  %38 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pt_section_detach(i32 %40, %struct.pt_image_section_cache* %4)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = call i32 (...) @ptu_passed()
  %45 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i32 @pt_section_attach(i32, %struct.pt_image_section_cache*) #2

declare dso_local i32 @pt_section_detach(i32, %struct.pt_image_section_cache*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
