; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_contained_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_contained_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.contained_back.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @contained_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contained_back(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.contained_back.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 8, i32* %17, align 4
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 1
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @pt_image_add(i32* %19, %struct.TYPE_4__* %23, i32* %27, i32 4100, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 1
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_add(i32* %32, %struct.TYPE_4__* %36, i32* %40, i32 4108, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %44, i32 0, i32 1
  %46 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %51 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @pt_image_add(i32* %45, %struct.TYPE_4__* %49, i32* %53, i32 4096, i32 3)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ptu_int_eq(i32 %55, i32 0)
  store i32 -1, i32* %6, align 4
  %57 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %57, i32 0, i32 1
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %60 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %61 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @pt_image_read(i32* %58, i32* %6, i32* %59, i32 1, i32* %63, i32 4100)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ptu_int_eq(i32 %65, i32 1)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ptu_int_eq(i32 %67, i32 3)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ptu_uint_eq(i32 %70, i32 4)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptu_uint_eq(i32 %73, i32 204)
  store i32 -1, i32* %6, align 4
  %75 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %76 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %75, i32 0, i32 1
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %78 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @pt_image_read(i32* %76, i32* %6, i32* %77, i32 1, i32* %81, i32 4108)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ptu_int_eq(i32 %83, i32 1)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ptu_int_eq(i32 %85, i32 3)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ptu_uint_eq(i32 %88, i32 12)
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ptu_uint_eq(i32 %91, i32 204)
  store i32 -1, i32* %6, align 4
  %93 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %94 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %93, i32 0, i32 1
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %96 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %97 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = call i32 @pt_image_read(i32* %94, i32* %6, i32* %95, i32 2, i32* %99, i32 4111)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ptu_int_eq(i32 %101, i32 1)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ptu_int_eq(i32 %103, i32 3)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ptu_uint_eq(i32 %106, i32 15)
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ptu_uint_eq(i32 %109, i32 204)
  store i32 -1, i32* %6, align 4
  %111 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %112 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %111, i32 0, i32 1
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %114 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %115 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = call i32 @pt_image_read(i32* %112, i32* %6, i32* %113, i32 1, i32* %117, i32 4112)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @ptu_int_eq(i32 %119, i32 1)
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @ptu_int_eq(i32 %121, i32 2)
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ptu_uint_eq(i32 %124, i32 4)
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ptu_uint_eq(i32 %127, i32 204)
  %129 = call i32 (...) @ptu_passed()
  %130 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, %struct.TYPE_4__*, i32*, i32, i32) #2

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
