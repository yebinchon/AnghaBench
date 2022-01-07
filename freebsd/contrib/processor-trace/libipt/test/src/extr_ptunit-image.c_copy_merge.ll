; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.copy_merge.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_merge(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.copy_merge.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 8, i32* %17, align 4
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 1
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 1
  %24 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @pt_image_add(i32* %19, %struct.TYPE_4__* %23, i32* %27, i32 8192, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 8, i32* %35, align 4
  %36 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 8, i32* %40, align 4
  %41 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %42 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %41, i32 0, i32 1
  %43 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %44 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 2
  %47 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @pt_image_add(i32* %42, %struct.TYPE_4__* %46, i32* %50, i32 8200, i32 2)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_eq(i32 %52, i32 0)
  %54 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %54, i32 0, i32 2
  %56 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 0
  %60 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %61 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @pt_image_add(i32* %55, %struct.TYPE_4__* %59, i32* %63, i32 8192, i32 3)
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
  %85 = call i32 @ptu_int_eq(i32 %84, i32 3)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ptu_uint_eq(i32 %87, i32 3)
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
  %99 = call i32 @pt_image_read(i32* %93, i32* %6, i32* %94, i32 1, i32* %98, i32 8202)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 1)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ptu_int_eq(i32 %102, i32 3)
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ptu_uint_eq(i32 %105, i32 10)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ptu_uint_eq(i32 %108, i32 204)
  %110 = call i32 (...) @ptu_passed()
  %111 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  ret i32 %113
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
