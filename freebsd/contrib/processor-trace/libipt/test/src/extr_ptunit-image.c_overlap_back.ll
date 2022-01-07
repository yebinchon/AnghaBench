; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_overlap_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_overlap_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32* }
%struct.ptunit_result = type { i32 }

@__const.overlap_back.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @overlap_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlap_back(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.overlap_back.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, i32* %13, i32* %17, i32 4096, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 1
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @pt_image_add(i32* %22, i32* %26, i32* %30, i32 4097, i32 2)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ptu_int_eq(i32 %32, i32 0)
  store i32 -1, i32* %6, align 4
  %34 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %34, i32 0, i32 1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_read(i32* %35, i32* %6, i32* %36, i32 2, i32* %40, i32 4096)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 1)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ptu_int_eq(i32 %44, i32 1)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_uint_eq(i32 %47, i32 0)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ptu_uint_eq(i32 %50, i32 204)
  store i32 -1, i32* %6, align 4
  %52 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %52, i32 0, i32 1
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %55 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %56 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @pt_image_read(i32* %53, i32* %6, i32* %54, i32 2, i32* %58, i32 4112)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 1)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ptu_int_eq(i32 %62, i32 2)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ptu_uint_eq(i32 %65, i32 15)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_uint_eq(i32 %68, i32 204)
  store i32 -1, i32* %6, align 4
  %70 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %71 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %70, i32 0, i32 1
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %73 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %74 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @pt_image_read(i32* %71, i32* %6, i32* %72, i32 1, i32* %76, i32 4097)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ptu_int_eq(i32 %78, i32 1)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 2)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ptu_uint_eq(i32 %83, i32 0)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ptu_uint_eq(i32 %86, i32 204)
  %88 = call i32 (...) @ptu_passed()
  %89 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
