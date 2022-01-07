; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_adjacent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_adjacent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ptunit_result = type { i32 }

@__const.adjacent.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @adjacent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjacent(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.adjacent.buffer to i8*), i64 8, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 2
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, %struct.TYPE_4__* %13, i32* %17, i32 4096, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 2
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 1
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 4096, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @pt_image_add(i32* %22, %struct.TYPE_4__* %26, i32* %30, i32 %39, i32 2)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ptu_int_eq(i32 %41, i32 0)
  %43 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %44 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %43, i32 0, i32 2
  %45 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 2
  %49 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %54 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 4096, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @pt_image_add(i32* %44, %struct.TYPE_4__* %48, i32* %52, i32 %61, i32 3)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ptu_int_eq(i32 %63, i32 0)
  store i32 -1, i32* %6, align 4
  %65 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %66 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %65, i32 0, i32 2
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %68 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %69 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @pt_image_read(i32* %66, i32* %6, i32* %67, i32 1, i32* %71, i32 4096)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ptu_int_eq(i32 %73, i32 1)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ptu_int_eq(i32 %75, i32 1)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ptu_uint_eq(i32 %78, i32 0)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ptu_uint_eq(i32 %81, i32 204)
  store i32 -1, i32* %6, align 4
  %83 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %84 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %83, i32 0, i32 2
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %86 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %87 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 @pt_image_read(i32* %84, i32* %6, i32* %85, i32 1, i32* %89, i32 4095)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ptu_int_eq(i32 %91, i32 1)
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ptu_int_eq(i32 %93, i32 2)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %98 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %104 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %102, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ptu_uint_eq(i32 %96, i32 %112)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ptu_uint_eq(i32 %115, i32 204)
  store i32 -1, i32* %6, align 4
  %117 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %118 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %117, i32 0, i32 2
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %120 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %121 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %125 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 4096, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @pt_image_read(i32* %118, i32* %6, i32* %119, i32 1, i32* %123, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @ptu_int_eq(i32 %134, i32 1)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @ptu_int_eq(i32 %136, i32 3)
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ptu_uint_eq(i32 %139, i32 0)
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ptu_uint_eq(i32 %142, i32 204)
  %144 = call i32 (...) @ptu_passed()
  %145 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  ret i32 %147
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
