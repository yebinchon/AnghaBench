; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.copy_replace.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_replace(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.copy_replace.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 8, i32* %17, align 4
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 1
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 3
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
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 2
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_add(i32* %32, %struct.TYPE_4__* %36, i32* %40, i32 4096, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %44, i32 0, i32 1
  %46 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %46, i32 0, i32 2
  %48 = call i32 @pt_image_copy(i32* %45, i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ptu_int_eq(i32 %49, i32 0)
  store i32 -1, i32* %6, align 4
  %51 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %52 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %51, i32 0, i32 1
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %54 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 @pt_image_read(i32* %52, i32* %6, i32* %53, i32 2, i32* %57, i32 4099)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ptu_int_eq(i32 %59, i32 2)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ptu_int_eq(i32 %61, i32 2)
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ptu_uint_eq(i32 %64, i32 3)
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ptu_uint_eq(i32 %67, i32 4)
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ptu_uint_eq(i32 %70, i32 204)
  %72 = call i32 (...) @ptu_passed()
  %73 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  ret i32 %75
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
