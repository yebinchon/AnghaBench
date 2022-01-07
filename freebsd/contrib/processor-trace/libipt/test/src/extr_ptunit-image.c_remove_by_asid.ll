; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_by_asid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_by_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.remove_by_asid.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @remove_by_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_by_asid(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.remove_by_asid.buffer to i8*), i64 12, i1 false)
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
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @pt_image_remove_by_asid(i32* %30, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ptu_int_eq(i32 %36, i32 1)
  %38 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ptu_int_ne(i32 %43, i32 0)
  %45 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ptu_int_eq(i32 %50, i32 0)
  store i32 -1, i32* %6, align 4
  %52 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %52, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %55 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %56 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @pt_image_read(i32* %53, i32* %6, i32* %54, i32 12, i32* %58, i32 4099)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @pte_nomap, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @ptu_int_eq(i32 %60, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ptu_int_eq(i32 %64, i32 -1)
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ptu_uint_eq(i32 %67, i32 1)
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ptu_uint_eq(i32 %70, i32 2)
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptu_uint_eq(i32 %73, i32 204)
  store i32 -1, i32* %6, align 4
  %75 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %76 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %75, i32 0, i32 1
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %78 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = call i32 @pt_image_read(i32* %76, i32* %6, i32* %77, i32 2, i32* %81, i32 8195)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ptu_int_eq(i32 %83, i32 2)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ptu_int_eq(i32 %85, i32 11)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ptu_uint_eq(i32 %88, i32 3)
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ptu_uint_eq(i32 %91, i32 4)
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ptu_uint_eq(i32 %94, i32 204)
  %96 = call i32 (...) @ptu_passed()
  %97 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_image_remove_by_asid(i32*, i32*) #2

declare dso_local i32 @ptu_int_ne(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
