; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, i32* }
%struct.ptunit_result = type { i32 }

@__const.copy_overlap.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_overlap(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.copy_overlap.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, i32* %13, i32* %17, i32 8192, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 1
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @pt_image_add(i32* %22, i32* %26, i32* %30, i32 8208, i32 2)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ptu_int_eq(i32 %32, i32 0)
  %34 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %34, i32 0, i32 2
  %36 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %41 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @pt_image_add(i32* %35, i32* %39, i32* %43, i32 8200, i32 3)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ptu_int_eq(i32 %45, i32 0)
  %47 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %47, i32 0, i32 1
  %49 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %49, i32 0, i32 2
  %51 = call i32 @pt_image_copy(i32* %48, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_eq(i32 %52, i32 0)
  store i32 -1, i32* %6, align 4
  %54 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %54, i32 0, i32 1
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %57 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @pt_image_read(i32* %55, i32* %6, i32* %56, i32 1, i32* %60, i32 8195)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ptu_int_eq(i32 %62, i32 1)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ptu_int_eq(i32 %64, i32 1)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ptu_uint_eq(i32 %67, i32 3)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ptu_uint_eq(i32 %70, i32 204)
  store i32 -1, i32* %6, align 4
  %72 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %73 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %72, i32 0, i32 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %75 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %76 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @pt_image_read(i32* %73, i32* %6, i32* %74, i32 1, i32* %78, i32 8202)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 1)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ptu_int_eq(i32 %82, i32 3)
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ptu_uint_eq(i32 %85, i32 2)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ptu_uint_eq(i32 %88, i32 204)
  store i32 -1, i32* %6, align 4
  %90 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %91 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %90, i32 0, i32 1
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %93 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %94 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = call i32 @pt_image_read(i32* %91, i32* %6, i32* %92, i32 1, i32* %96, i32 8214)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ptu_int_eq(i32 %98, i32 1)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 3)
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ptu_uint_eq(i32 %103, i32 14)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ptu_uint_eq(i32 %106, i32 204)
  store i32 -1, i32* %6, align 4
  %108 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %109 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %108, i32 0, i32 1
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %111 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %112 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = call i32 @pt_image_read(i32* %109, i32* %6, i32* %110, i32 1, i32* %114, i32 8217)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ptu_int_eq(i32 %116, i32 1)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @ptu_int_eq(i32 %118, i32 2)
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ptu_uint_eq(i32 %121, i32 9)
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ptu_uint_eq(i32 %124, i32 204)
  %126 = call i32 (...) @ptu_passed()
  %127 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_copy(i32*, i32*) #2

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
