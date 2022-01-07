; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_attach_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_attach_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_image_section_cache = type { i64 }

@__const.attach_map.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @attach_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_map(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca %struct.pt_image_section_cache, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %7 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.attach_map.bytes to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %4, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %11 = call i32 @sfix_write(%struct.section_fixture* %9, i32* %10)
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 0
  %14 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pt_mk_section(%struct.TYPE_7__** %13, i32 %16, i32 1, i32 3)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 0)
  %20 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @ptu_ptr(%struct.TYPE_7__* %22)
  %24 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @pt_section_attach(%struct.TYPE_7__* %26, %struct.pt_image_section_cache* %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ptu_int_eq(i32 %28, i32 0)
  %30 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @pt_section_map(%struct.TYPE_7__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ptu_int_eq(i32 %34, i32 0)
  %36 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i32 @pt_section_map(%struct.TYPE_7__* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ptu_int_eq(i32 %40, i32 0)
  %42 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %43 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ptu_uint_eq(i32 %46, i32 2)
  %48 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %49 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @pt_section_unmap(%struct.TYPE_7__* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ptu_int_eq(i32 %52, i32 0)
  %54 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @pt_section_unmap(%struct.TYPE_7__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ptu_int_eq(i32 %58, i32 0)
  %60 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %61 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @pt_section_detach(%struct.TYPE_7__* %62, %struct.pt_image_section_cache* %4)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ptu_int_eq(i32 %64, i32 0)
  %66 = call i32 (...) @ptu_passed()
  %67 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(%struct.TYPE_7__**, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(%struct.TYPE_7__*) #2

declare dso_local i32 @pt_section_attach(%struct.TYPE_7__*, %struct.pt_image_section_cache*) #2

declare dso_local i32 @pt_section_map(%struct.TYPE_7__*) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_section_unmap(%struct.TYPE_7__*) #2

declare dso_local i32 @pt_section_detach(%struct.TYPE_7__*, %struct.pt_image_section_cache*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
