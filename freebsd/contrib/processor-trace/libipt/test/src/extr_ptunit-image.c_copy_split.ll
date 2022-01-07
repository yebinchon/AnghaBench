; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.copy_split.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_split(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.copy_split.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, %struct.TYPE_4__* %13, i32* %17, i32 8192, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 7, i32* %25, align 4
  %26 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 7, i32* %30, align 4
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 2
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_add(i32* %32, %struct.TYPE_4__* %36, i32* %40, i32 8193, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 8, i32* %48, align 4
  %49 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 8, i32* %53, align 4
  %54 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %54, i32 0, i32 2
  %56 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 2
  %60 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %61 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @pt_image_add(i32* %55, %struct.TYPE_4__* %59, i32* %63, i32 8200, i32 3)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ptu_int_eq(i32 %65, i32 0)
  %67 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %68 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %67, i32 0, i32 1
  %69 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %70 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %69, i32 0, i32 2
  %71 = call i32 @pt_image_copy(i32* %68, i32* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ptu_int_eq(i32 %72, i32 0)
  store i32 -1, i32* %6, align 4
  %74 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %75 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %74, i32 0, i32 1
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %77 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %78 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @pt_image_read(i32* %75, i32* %6, i32* %76, i32 1, i32* %80, i32 8195)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ptu_int_eq(i32 %82, i32 1)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ptu_int_eq(i32 %84, i32 2)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ptu_uint_eq(i32 %87, i32 2)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ptu_uint_eq(i32 %90, i32 204)
  store i32 -1, i32* %6, align 4
  %92 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %93 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %92, i32 0, i32 1
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %95 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %96 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @pt_image_read(i32* %93, i32* %6, i32* %94, i32 1, i32* %98, i32 8201)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 1)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ptu_int_eq(i32 %102, i32 3)
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ptu_uint_eq(i32 %105, i32 1)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ptu_uint_eq(i32 %108, i32 204)
  store i32 -1, i32* %6, align 4
  %110 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %111 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %110, i32 0, i32 1
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %113 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %114 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = call i32 @pt_image_read(i32* %111, i32* %6, i32* %112, i32 1, i32* %116, i32 8192)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @ptu_int_eq(i32 %118, i32 1)
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ptu_int_eq(i32 %120, i32 1)
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ptu_uint_eq(i32 %123, i32 0)
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ptu_uint_eq(i32 %126, i32 204)
  %128 = call i32 (...) @ptu_passed()
  %129 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, %struct.TYPE_4__*, i32*, i32, i32) #2

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
