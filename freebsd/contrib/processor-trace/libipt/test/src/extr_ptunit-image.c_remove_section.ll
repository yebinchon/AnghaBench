; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.remove_section.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @remove_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_section(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.remove_section.buffer to i8*), i64 12, i1 false)
  store i32 -1, i32* %6, align 4
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %11 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @pt_image_read(i32* %9, i32* %6, i32* %10, i32 2, i32* %14, i32 4097)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 2)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 10)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ptu_uint_eq(i32 %21, i32 1)
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_uint_eq(i32 %24, i32 2)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ptu_uint_eq(i32 %27, i32 204)
  %29 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %29, i32 0, i32 1
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 @pt_image_remove(i32* %30, i32* %34, i32* %38, i32 4096)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ptu_int_eq(i32 %40, i32 0)
  %42 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %43 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_int_ne(i32 %47, i32 0)
  %49 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 0)
  store i32 -1, i32* %6, align 4
  %56 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %56, i32 0, i32 1
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %59 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %60 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call i32 @pt_image_read(i32* %57, i32* %6, i32* %58, i32 12, i32* %62, i32 4099)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @pte_nomap, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @ptu_int_eq(i32 %64, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 -1)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ptu_uint_eq(i32 %71, i32 1)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ptu_uint_eq(i32 %74, i32 2)
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ptu_uint_eq(i32 %77, i32 204)
  store i32 -1, i32* %6, align 4
  %79 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %80 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %79, i32 0, i32 1
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %82 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %83 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = call i32 @pt_image_read(i32* %80, i32* %6, i32* %81, i32 2, i32* %85, i32 8195)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ptu_int_eq(i32 %87, i32 2)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ptu_int_eq(i32 %89, i32 11)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ptu_uint_eq(i32 %92, i32 3)
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ptu_uint_eq(i32 %95, i32 4)
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ptu_uint_eq(i32 %98, i32 204)
  %100 = call i32 (...) @ptu_passed()
  %101 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_image_remove(i32*, i32*, i32*, i32) #2

declare dso_local i32 @ptu_int_ne(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
