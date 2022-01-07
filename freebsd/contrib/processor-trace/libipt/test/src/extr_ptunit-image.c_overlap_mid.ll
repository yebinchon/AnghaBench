; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_overlap_mid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_overlap_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.overlap_mid.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @overlap_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlap_mid(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.overlap_mid.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, %struct.TYPE_4__* %13, i32* %17, i32 4096, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 8, i32* %25, align 4
  %26 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 8, i32* %30, align 4
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 1
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_add(i32* %32, %struct.TYPE_4__* %36, i32* %40, i32 4100, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  store i32 -1, i32* %6, align 4
  %44 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %44, i32 0, i32 1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @pt_image_read(i32* %45, i32* %6, i32* %46, i32 2, i32* %50, i32 4099)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_eq(i32 %52, i32 1)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 1)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ptu_uint_eq(i32 %57, i32 3)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_uint_eq(i32 %60, i32 204)
  store i32 -1, i32* %6, align 4
  %62 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %62, i32 0, i32 1
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %65 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %66 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i32 @pt_image_read(i32* %63, i32* %6, i32* %64, i32 1, i32* %68, i32 4100)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ptu_int_eq(i32 %70, i32 1)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ptu_int_eq(i32 %72, i32 2)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ptu_uint_eq(i32 %75, i32 0)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ptu_uint_eq(i32 %78, i32 204)
  store i32 -1, i32* %6, align 4
  %80 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %81 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %80, i32 0, i32 1
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %83 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %84 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @pt_image_read(i32* %81, i32* %6, i32* %82, i32 2, i32* %86, i32 4107)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ptu_int_eq(i32 %88, i32 1)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ptu_int_eq(i32 %90, i32 2)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ptu_uint_eq(i32 %93, i32 7)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ptu_uint_eq(i32 %96, i32 204)
  store i32 -1, i32* %6, align 4
  %98 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %99 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %98, i32 0, i32 1
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %101 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %102 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = call i32 @pt_image_read(i32* %99, i32* %6, i32* %100, i32 1, i32* %104, i32 4108)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ptu_int_eq(i32 %106, i32 1)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @ptu_int_eq(i32 %108, i32 1)
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ptu_uint_eq(i32 %111, i32 12)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ptu_uint_eq(i32 %114, i32 204)
  %116 = call i32 (...) @ptu_passed()
  %117 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  ret i32 %119
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
